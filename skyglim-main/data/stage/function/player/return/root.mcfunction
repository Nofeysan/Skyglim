#> stage:player/return/root
# 
# 
# 
# 

# まずは戻す
execute if items entity @s weapon.mainhand *[custom_data={"return_pearl": 1}] run loot replace entity @s weapon.mainhand loot stage:return_ball
execute if items entity @s weapon.offhand *[custom_data={"return_pearl": 1}] run loot replace entity @s weapon.offhand loot stage:return_ball

# trigger を引く
scoreboard players set @s ReturnPearl 0

# tell
tellraw @s {translate: "stage.return.start", color: "#c5edff"}
