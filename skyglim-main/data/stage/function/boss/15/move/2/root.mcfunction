#> stage:boss/6/move/2/root
# 
# プレイヤーの真上に tp → ブロック破壊 の繰り返し
# 
# 

# AoE
execute positioned ~ 74 ~ run function entity:aec_manager/summon/.cyl {r: 19, t: 60, dmg: 62, str: 46, id: 151}

# tp
    tp @s @a[sort=furthest, limit=1]
    playsound minecraft:entity.player.teleport voice @a ~ ~ ~ 0.7 1
    particle minecraft:dragon_breath ~ ~ ~ 0.7 1.4 0.7 0.1 180 force @a
    effect give @a[distance=..3] minecraft:blindness 2 0

# reset
    execute if score s15 BossMoves matches 500.. run scoreboard players set s15 BossMoves 60
