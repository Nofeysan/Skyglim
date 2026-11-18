#> stage:boss/4/move/2/straight
# 
# 進める
# 
# 

# decrement
scoreboard players remove $count _ 1

# damage
execute if entity @a[distance=..2.5, tag=!ex5.damaged] run effect give @a[distance=..2.5, tag=!ex5.damaged] minecraft:wind_charged 1 40
execute if entity @a[distance=..2.5, tag=!ex5.damaged] run item modify entity @a[distance=..2.5, tag=!ex5.damaged] weapon.offhand {function: "minecraft:set_count", count: -8, add: true}
execute if entity @a[distance=..2.5, tag=!ex5.damaged] run tag @a[distance=..2.5, tag=!ex5.damaged] add ex5.damaged

# particle
particle minecraft:dust{color: 4390911, scale: 2.0} ~ ~ ~ 0.0 0.0 0.0 0 2
playsound minecraft:item.trident.riptide_1 voice @a ~ ~ ~ 0.1 1

# next
execute if score $count _ matches 1.. positioned ^ ^ ^1 run function stage:boss/ex5/move/1/straight
