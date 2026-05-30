#> stage:boss/4/move/2/straight
# 
# 進める
# 
# 

# decrement
scoreboard players remove $count _ 1

# damage
execute if entity @a[distance=..2.5, tag=!s4.damaged] run effect give @a[distance=..2.5, tag=!s4.damaged] minecraft:wind_charged 1 40
execute if entity @a[distance=..2.5, tag=!s4.damaged] run tag @a[distance=..2.5, tag=!s4.damaged] add s4.damaged

# particle
particle minecraft:dust{color: [1, 0.843137254901961, 0.156862745098039], scale: 2.0} ~ ~ ~ 0.0 0.0 0.0 0 2
playsound minecraft:item.trident.riptide_1 voice @a ~ ~ ~ 0.1 1
# next
execute if score $count _ matches 1.. positioned ^ ^ ^1 run function stage:boss/4/move/2/straight
