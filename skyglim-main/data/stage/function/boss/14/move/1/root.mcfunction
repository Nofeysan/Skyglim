#> stage:boss/11/move/1/root
# 
# 6方向にアイテム飛ばすやつ
# as boss at @s
# 

# 予告・ボス中央tp
execute if score s14 BossMoves matches 200..400 run tp @n[tag=boss, tag=s14] 7544 88 -77

execute if score s14 BossMoves matches 200 as @a[distance=..75] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 1.5 1.0
execute if score s14 BossMoves matches 220 as @a[distance=..75] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 1.5 1.5
execute if score s14 BossMoves matches 240 as @a[distance=..75] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 1.5 2.0

# tp (7s)
execute if score s14 BossMoves matches 260..400 positioned 7544 83 -77 as @a[distance=..14, gamemode=adventure] at @s facing 7544 83 -77 rotated ~ 0 run tp ^ ^ ^-0.32

# sound, particke
scoreboard players operation _ _ = s14 BossMoves
scoreboard players operation _ _ %= #4 num
execute if score _ _ matches 0 as @a[distance=..75] at @s run playsound minecraft:entity.wither.shoot voice @s ~ ~ ~ 0.05 1.6

execute if score s14 BossMoves matches 260..400 positioned 7544 82 -77 run particle minecraft:cloud ~ ~ ~ 6 0 6 0 40

# reset
execute if score s14 BossMoves matches 401.. run scoreboard players set s14 BossMoves 60
