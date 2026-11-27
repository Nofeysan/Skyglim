#> stage:boss/exx/move/2/root
# 
# 6方向にアイテム飛ばすやつ
# as boss at @s
# 

# effect
execute if score exx BossMoves matches 200 run effect give @n[predicate=entity:entity_enemy, tag=boss, tag=exx] minecraft:slowness 5 50

# 召喚
execute if score exx BossMoves matches 200 rotated 0 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-1 {id: 1}
execute if score exx BossMoves matches 202 rotated 60 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-1 {id: 2}
execute if score exx BossMoves matches 204 rotated 120 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-1 {id: 3}
execute if score exx BossMoves matches 206 rotated 180 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-1 {id: 4}
execute if score exx BossMoves matches 208 rotated 240 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-1 {id: 5}
execute if score exx BossMoves matches 210 rotated 300 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-1 {id: 6}

execute if score exx BossMoves matches 220 rotated 30 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-2 {id: 11}
execute if score exx BossMoves matches 222 rotated 90 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-2 {id: 12}
execute if score exx BossMoves matches 224 rotated 150 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-2 {id: 13}
execute if score exx BossMoves matches 226 rotated 210 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-2 {id: 14}
execute if score exx BossMoves matches 228 rotated 270 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-2 {id: 15}
execute if score exx BossMoves matches 230 rotated 330 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-2 {id: 16}

execute if score exx BossMoves matches 240 rotated 0 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-3 {id: 21}
execute if score exx BossMoves matches 242 rotated 60 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-3 {id: 22}
execute if score exx BossMoves matches 244 rotated 120 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-3 {id: 23}
execute if score exx BossMoves matches 246 rotated 180 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-3 {id: 24}
execute if score exx BossMoves matches 248 rotated 240 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-3 {id: 25}
execute if score exx BossMoves matches 250 rotated 300 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-3 {id: 26}

execute if score exx BossMoves matches 260 rotated 30 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-4 {id: 31}
execute if score exx BossMoves matches 262 rotated 90 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-4 {id: 32}
execute if score exx BossMoves matches 264 rotated 150 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-4 {id: 33}
execute if score exx BossMoves matches 266 rotated 210 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-4 {id: 34}
execute if score exx BossMoves matches 268 rotated 270 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-4 {id: 35}
execute if score exx BossMoves matches 270 rotated 330 0 positioned ~ ~1 ~ run function stage:boss/exx/move/2/item-4 {id: 36}

# 発射
execute if score exx BossMoves matches 240 run function stage:boss/exx/move/2/shoot_1
execute if score exx BossMoves matches 260 run function stage:boss/exx/move/2/shoot_2
execute if score exx BossMoves matches 280 run function stage:boss/exx/move/2/shoot_3
execute if score exx BossMoves matches 300 run function stage:boss/exx/move/2/shoot_4

# AoE
execute if score exx BossMoves matches 200 at @a[distance=..50] positioned ~ 240 ~ run function entity:aec_manager/summon/.cyl {r: 9, t: 60, dmg: 16, str: 18, id: 292}
execute if score exx BossMoves matches 220 at @a[distance=..50] positioned ~ 240 ~ run function entity:aec_manager/summon/.cyl {r: 9, t: 60, dmg: 16, str: 18, id: 292}
execute if score exx BossMoves matches 240 at @a[distance=..50] positioned ~ 240 ~ run function entity:aec_manager/summon/.cyl {r: 9, t: 60, dmg: 16, str: 18, id: 292}
execute if score exx BossMoves matches 260 at @a[distance=..50] positioned ~ 240 ~ run function entity:aec_manager/summon/.cyl {r: 9, t: 60, dmg: 16, str: 18, id: 292}

# damage 処理
execute if score exx BossMoves matches 240..320 as @e[type=item, tag=gimmick.magma] at @s run function stage:boss/exx/move/2/damage

# kill
execute if score exx BossMoves matches 320 as @e[type=item, tag=gimmick.magma] at @s run function stage:boss/exx/move/2/reset

# reset
execute if score exx BossMoves matches 320.. run scoreboard players set exx BossMoves 60
