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

# リセット
data remove storage km_solver: inputs
data remove storage km_solver: vars

# 一般式を代入
data modify storage km_solver: inputs append value {f:{mul:[{mul:[{v:"M"},{v:"G"}]},{mul:[{sub:[{n:1.0f},{div:[{v:"D"},{add:[{v:"D"},{n:100.0f}]}]}]},{v:"E"}]}]}}

# 初期値を代入
data modify storage km_solver: vars set value {G:0.0f, D:0.0f, M:1.0f, E:1.0f}

# ステータス保存
execute store result storage km_solver: vars.D float 1 run scoreboard players get @s act_Defence

data modify storage km_solver: vars.G set from storage damageapi: damage.value


#* 職業
# 狂戦士
execute if score @s occupation matches 2 run data modify storage km_solver: vars.M set value 1.20f

# 護神
execute if score @s occupation matches 3 run data modify storage km_solver: vars.M set value 0.90f


# 乱数でちょっと変える (*0.90-1.10)
execute store result storage km_solver: vars.E float 0.001 run random value 900..1100

# 実行
execute at @p run function km_solver:solve

# もし敵がいない = 落下ダメージとか  なら MaxHP*5% を与える
execute if score exist Temp matches 0 store result storage km_solver: outputs[0] float 0.0005 run scoreboard players get @s MaxHealth

# true-damage 処理（防御貫通）
execute if predicate entity:is_wind_charged run function damageapi:calc_damage/true-damage/player

#! debug
#-tellraw @a [{text:"\ue010 与ダメージ(軽減後) float: "},{"storage": "km_solver:","nbt": "outputs[0]"}]
#-tellraw @a [{text:"\ue010 vars : "},{"storage": "km_solver:","nbt": "vars"}]

# DealtDamage Temp に入れる
execute store result score DealtDamage Temp run data get storage km_solver: outputs[0] 100
execute if score DealtDamage Temp matches ..-1 run scoreboard players set DealtDamage Temp 0

###* 与ダメージ表示
# int float に分ける
scoreboard players operation @s Damage.int = DealtDamage Temp
scoreboard players operation @s Damage.int /= #100 num

scoreboard players operation @s Damage.float = DealtDamage Temp
scoreboard players operation @s Damage.float %= #100 num
scoreboard players operation @s Damage.float /= #10 num

execute at @s positioned ~ ~1.2 ~ run loot spawn ^ ^ ^1 loot damageapi:damage_text_player
execute as @n[predicate=damageapi:is_stick,tag=!modified] run data modify entity @s CustomName set from entity @s Item.components."minecraft:custom_name"
execute as @n[predicate=damageapi:is_stick,tag=!modified] run data modify entity @s CustomNameVisible set value true
execute as @n[predicate=damageapi:is_stick,tag=!modified] run data modify entity @s PickupDelay set value 32767
execute as @n[predicate=damageapi:is_stick,tag=!modified] run data modify entity @s PortalCooldown set value 110
execute as @n[predicate=damageapi:is_stick,tag=!modified] run data modify entity @s NoGravity set value true
execute as @n[predicate=damageapi:is_stick,tag=!modified] run data modify entity @s Motion set value [0.0d, 0.0d, 0.0d]
execute as @n[predicate=damageapi:is_stick,tag=!modified] run tag @s add modified

###* ダメージを付与
scoreboard players operation @s DamageScore = DealtDamage Temp


###* 防具効果
function damageapi:calc_damage/player/armor/root

#tellraw @s [{text: "",color: "#ec1d2f"},{text:"\uE010 ",color: "gray"},{"score":{"name":"@s", "objective":"Damage.int"}},{text:"."},{"score":{"name":"@s", "objective":"Damage.float"}},{text:" ダメージ！"}]



# リセット
#data modify entity @s HurtTime set value 0s


# 数値のリセット
scoreboard players reset current Temp
execute on attacker run scoreboard players reset @s ChargeRate

# 最後にタグをとる
tag @s remove damage_taken
