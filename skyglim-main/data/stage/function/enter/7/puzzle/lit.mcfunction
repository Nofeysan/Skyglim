#> stage:enter/7/puzzle/lit
# 
# 
# 
# 

# score
scoreboard players add $gimmick.lamp s7.gimmick 1

# tell
execute positioned 9844 10 -329 run tellraw @a[dx=57, dy=15, dz=50] [{text: '', color: '#c5edff'}, {translate: 'stage.7.gimmick.lamp.on', color: '#94d3e6'}, {text: ' ['}, {score: {name: "$gimmick.lamp", objective: "s7.gimmick"}}, {text: '/5]'}]

# playsound
execute positioned 9844 10 -329 as @a[dx=57, dy=15, dz=50] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.3 1.5

# clear
fill ~ ~2 ~ ~ ~2 ~ minecraft:air destroy

# 5 なら Open
execute if score $gimmick.lamp s7.gimmick matches 5.. run function stage:enter/7/puzzle/open
