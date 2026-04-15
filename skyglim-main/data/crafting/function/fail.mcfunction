#> crafting:fail
# 
# レシピが見つからなかった時
# 
# 

tellraw @a[distance=..7] [{translate: "crafting.fail.norecipe", color: "#d94262"}]
playsound minecraft:block.dispenser.fail voice @a[distance=..7] ~ ~ ~ 1 2
