#> stage:enter/7/open/1
# 
# 1: ギミック地面部屋; 9879 16 -353
# 2: パズル部屋; 9878 17 -356
# 3: パルクール部屋; 9879 17 -360
# 4: 中ボス部屋; 9880 16 -363
# 

# tell
tellraw @a {translate: 'stage.7.lamp.lit', color: '#66a5b8'}

# perform
execute at @a run playsound minecraft:block.anvil.use voice @a ~ ~ ~ 0.5 1.2
execute at @a run playsound minecraft:entity.firework_rocket.blast voice @a ~ ~ ~ 0.7 1.0

# set
setblock 9879 16 -363 minecraft:redstone_block

# clear
setblock 9920 12 -429 minecraft:air destroy

# score
scoreboard players add $progress s7.gimmick 1
execute if score $progress s7.gimmick matches 4.. run function stage:enter/7/open/open
