#> damageapi:calc_damage/player/calc
# 
# プレイヤーのダメージ処理
# 
# 

# とりあえずタグを付けましょう
tag @s add damage_taken

####* 攻撃力計算
#- damage = (1 + dmg) * (100 + str) * multiplier * 0.01
#- D = dmg
#- S = str
#- C = CD
#- M = multiplier

# リセット
data remove storage km_solver: inputs
data remove storage km_solver: vars

# 一般式を代入
data modify storage km_solver: inputs append value {f:{mul:[{mul:[{add:[{n:1.0f},{v:"D"}]},{add:[{n:100.0f},{v:"S"}]}]},{mul:[{mul:[{n:1.0f},{v:"M"}]},{n:0.01f}]}]}}

# 初期値を代入
data modify storage km_solver: vars set value {D:0.0f, S:0.0f, M:1.0f}

# 各ステータスを保存
scoreboard players set exist Temp 0

execute on attacker run data modify storage km_solver: vars.S set from entity @s data.status.str
execute on attacker run data modify storage km_solver: vars.D set from entity @s data.status.dmg
execute on attacker run scoreboard players set exist Temp 1

# 実行
execute at @p run function km_solver:solve

# 一時保存
data modify storage damageapi: damage.value set from storage km_solver: outputs[0]

###! ここに防具効果とかのやつ

#! debug
#-tellraw @a [{text:"\ue010 与ダメージ(軽減前) : ",color: "#44ddf4"},{"storage": "km_solver:","nbt": "outputs[0]"}]
#-tellraw @a [{text:"\ue010 vars : ",color: "#44ddf4"},{"storage": "km_solver:","nbt": "vars"}]



####* 被ダメージ計算
#- dealt = damage * (1 - def/(def + 100)) * Error
#- G = GetDamage
#- D = def
#- M = Multiplier
#- E = Error
#- V = item

# リセット
data remove storage km_solver: inputs
data remove storage km_solver: vars

# 一般式を代入
data modify storage km_solver: inputs append value {f:{mul:[{mul:[{v:"M"},{v:"G"}]},{mul:[{sub:[{n:1.0f},{div:[{v:"D"},{add:[{v:"D"},{n:100.0f}]}]}]},{v:"E"}]}]}}

# 初期値を代入
data modify storage km_solver: vars set value {G:0.0f, D:0.0f, M:1.0f, E:1.0f, V:1.0f}

# ステータス保存
execute store result storage km_solver: vars.D float 1 run scoreboard players get @s act_Defence

data modify storage km_solver: vars.G set from storage damageapi: damage.value

# 職業・アイテム効果など
    # 初期値設定
        scoreboard players set _ _ 100

    # 効果
        # 職業
            # 狂戦士 (+8%)
                execute if score @s occupation matches 2 run scoreboard players add _ _ 8

            # 護神 (-13%)
                execute if score @s occupation matches 3 run scoreboard players remove _ _ 13

        # 鉛板 (-2%)
            execute if predicate damageapi:item/has_1110010 run scoreboard players remove _ _ 2

    # 代入
        execute store result storage km_solver: vars.M float 0.01 run scoreboard players get _ _

# 乱数でちょっと変える (*0.90-1.10)
execute store result storage km_solver: vars.E float 0.001 run random value 900..1100

# 実行
execute at @p run function km_solver:solve

# 特殊ダメージ処理
    # もし敵がいない = 落下ダメージとか  なら MaxHP*5% を与える
    execute if score exist Temp matches 0 store result storage km_solver: outputs[0] float 0.0005 run scoreboard players get @s MaxHealth
    execute if score exist Temp matches 0 if predicate damageapi:item/has_1112008 run data modify storage km_solver: outputs[0] set value 0.0f

    # 炎上ダメージは MaxHP*2%
    execute if predicate damageapi:is_on_fire store result storage km_solver: outputs[0] float 0.0002 run scoreboard players get @s MaxHealth

    # true-damage 処理（防御貫通）
    execute if predicate entity:is_wind_charged run function damageapi:calc_damage/true-damage/player

#! debug
#-tellraw @a [{text:"\ue010 与ダメージ(軽減後) float: "},{"storage": "km_solver:","nbt": "outputs[0]"}]
#-tellraw @a [{text:"\ue010 vars : "},{"storage": "km_solver:","nbt": "vars"}]

# DealtDamage Temp に入れる
execute store result score DealtDamage Temp run data get storage km_solver: outputs[0] 100
execute if score DealtDamage Temp matches ..-1 run scoreboard players set DealtDamage Temp 0

###* 与ダメージ表示
    # damage 値取得（小数第１位まで）
    data modify storage damageapi: rotation.dmg set from storage km_solver: outputs[0]
    execute store result storage damageapi: rotation.dmg float 0.1 run data get storage damageapi: rotation.dmg 10
    data modify storage damageapi: rotation.dmgstr set string storage damageapi: rotation.dmg 0 -1
    
    # macro で -179..180 で rotate に代入して召喚
    execute store result storage damageapi: rotation.xy int 1 run random value -179..180
    execute store result storage damageapi: rotation.z int 1 run random value -50..50

    # 召喚
    function damageapi:calc_damage/macro/summon_damage_player with storage damageapi: rotation

###* ダメージを付与
scoreboard players operation @s DamageScore = DealtDamage Temp


###* 防具効果
function damageapi:calc_damage/player/armor/root

#tellraw @s [{text: "",color: "#ec1d2f"},{text:"\uE010 ",color: "gray"},{"score":{"name":"@s", "objective":"Damage.int"}},{text:"."},{"score":{"name":"@s", "objective":"Damage.float"}},{text:" ダメージ！"}]

# return 処理のリセット
execute if score @s ReturnPearl matches 1.. run function stage:player/return/fail

# リセット
#data modify entity @s HurtTime set value 0s


# 数値のリセット
scoreboard players reset current Temp
execute on attacker run scoreboard players reset @s ChargeRate

# 最後にタグをとる
tag @s remove damage_taken
