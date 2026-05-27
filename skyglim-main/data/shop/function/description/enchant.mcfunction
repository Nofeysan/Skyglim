#> shop:description/enchant
# 
# 説明文
# 
# 

# tell
tellraw @s [{translate: "tutorial.stats.left", color: "#bce2e8"}, {translate: "shop.sign.enchant", color: "#fab80d"}, {translate: "tutorial.stats.right"}]
tellraw @s [{translate: "shop.description.enchant.1"}]
tellraw @s [{translate: "shop.description.enchant.2"}]
tellraw @s [{translate: "shop.description.restore.3"}]

# sound
execute at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
