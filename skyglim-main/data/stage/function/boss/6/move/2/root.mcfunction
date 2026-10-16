#> stage:boss/6/move/2/root
# 
# 外周に向かって飛ばしまくる
# 
# 

# 予告・ボス中央tp
execute if score s6 BossMoves matches 200..400 run tp @n[tag=boss, tag=s6] 10012 45 -178

execute if score s6 BossMoves matches 200 run playsound minecraft:block.note_block.chime voice @a ~ ~ ~ 1.5 1.0
execute if score s6 BossMoves matches 220 run playsound minecraft:block.note_block.chime voice @a ~ ~ ~ 1.5 1.5
execute if score s6 BossMoves matches 240 run playsound minecraft:block.note_block.chime voice @a ~ ~ ~ 1.5 2.0

# tp (7s)
execute if score s6 BossMoves matches 260..400 positioned 10012 42 -178 as @a[distance=..14, gamemode=adventure] at @s facing 10012 42 -178 rotated ~ 0 run tp ^ ^ ^-0.25

# sound, particke
scoreboard players operation _ _ = s6 BossMoves
scoreboard players operation _ _ %= #4 num
execute if score _ _ matches 0 run playsound minecraft:entity.wither.shoot voice @a ~ ~ ~ 0.05 1.6

execute if score s6 BossMoves matches 260..400 positioned 10012 42 -178 run particle minecraft:cloud ~ ~ ~ 6 0 6 0 40

# reset
execute if score s6 BossMoves matches 401.. run scoreboard players set s6 BossMoves 60
