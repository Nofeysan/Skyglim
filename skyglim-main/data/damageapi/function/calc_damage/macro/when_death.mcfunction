#> damageapi:calc_damage/enemy/calc
# 
# HP が 0 になった時の処理
# 
# 

##* 経験値
    # 基礎経験値を score に保存
        execute store result score xp Temp run data get entity @s data.status.xp

    # 各プレイヤーに実行させる
        execute unless entity @s[tag=boss] on attacker at @s as @a[distance=..15] run function damageapi:calc_damage/macro/calc_xp
        execute if entity @s[tag=boss] on attacker at @s as @a[distance=..50] run function damageapi:calc_damage/macro/calc_xp

# 装備効果
    execute on attacker if entity @s[type=minecraft:player] run function damageapi:calc_damage/enemy/armor/death
    execute on attacker if entity @s[type=minecraft:armor_stand] as @p[scores={UseMagicCheck=1..}] run function damageapi:calc_damage/enemy/armor/death
    execute on attacker if entity @s[type=minecraft:armor_stand] unless entity @p[scores={UseMagicCheck=1..}] as @p run function damageapi:calc_damage/enemy/armor/death

# 付近にプレイヤーがいたら Item Drop
    execute unless entity @s[tag=boss] at @s if entity @a[distance=..20] run function damageapi:calc_damage/enemy/itemdrop/root

# ボス死亡時処理
    execute if entity @s[tag=boss] run function stage:boss/perform

# 死亡処理
    # スライム系ならサイズを一番小さくする
    execute if predicate entity:entity_enemy_cube run data modify entity @s Size set value 0

# 最後に消す
    kill @s
