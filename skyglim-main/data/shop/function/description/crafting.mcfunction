#> shop:description/crafting
# 
# 説明文
# 
# 

# tell
tellraw @s [{translate: "tutorial.stats.left", color: "#bce2e8"}, {translate: "shop.sign.crafting", color: "#fab80d"}, {translate: "tutorial.stats.right"}]
tellraw @s [{translate: "shop.description.crafting.1"}]
tellraw @s [{translate: "shop.description.crafting.2"}]

# sound
execute at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
