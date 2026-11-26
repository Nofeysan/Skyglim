#> stage:teleport/importants/sp-chromalier/collect/check
# 
# 
# 
# 

# what is your repair_cost?
    scoreboard players set _ _ 0
    execute if data entity @n[type=minecraft:item] Item.components."minecraft:repair_cost" store result score _ _ run data get entity @n[type=minecraft:item] Item.components."minecraft:repair_cost"

# not chromelier?
    execute unless score _ _ matches 310901..310908 run return run function stage:teleport/importants/sp-chromalier/collect/return

# chromelier.
    # white~
        execute if score _ _ matches 310901 run function stage:teleport/importants/sp-chromalier/collect/set/white
        execute if score _ _ matches 310902 run function stage:teleport/importants/sp-chromalier/collect/set/yellow
        execute if score _ _ matches 310903 run function stage:teleport/importants/sp-chromalier/collect/set/green
        execute if score _ _ matches 310904 run function stage:teleport/importants/sp-chromalier/collect/set/light_blue
        execute if score _ _ matches 310905 run function stage:teleport/importants/sp-chromalier/collect/set/cyan
        execute if score _ _ matches 310906 run function stage:teleport/importants/sp-chromalier/collect/set/pink
        execute if score _ _ matches 310907 run function stage:teleport/importants/sp-chromalier/collect/set/magenta
        execute if score _ _ matches 310908 run function stage:teleport/importants/sp-chromalier/collect/set/black

    # all done?
        execute if score $chromalier_all _ matches 8 run schedule function story:cecile/3/0 60t
