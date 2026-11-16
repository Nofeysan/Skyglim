#> stage:player/return/root
# 
# 
# 
# 

# clear
effect clear @s minecraft:luck

# まずは戻す
execute if items entity @s weapon.mainhand *[custom_data={"return_pearl": 1b}] run loot replace entity @s weapon.mainhand loot stage:return_ball
execute if items entity @s weapon.offhand *[custom_data={"return_pearl": 1b}] run loot replace entity @s weapon.offhand loot stage:return_ball

# 今使える？
execute unless score $cant_use_pearl _ matches 1 run return run function stage:player/return/cant_use

# trigger を引く
scoreboard players set @s ReturnPearl 0

# tell
tellraw @s {translate: "stage.return.start", color: "#c5edff"}
execute at @s run playsound minecraft:block.beacon.activate voice @s ~ ~ ~ 1.5 1
