#> shop:description/sell
# 
# 説明文
# 
# 

# tell
tellraw @s [{translate: "tutorial.stats.left", color: "#bce2e8"}, {translate: "shop.sign.sell", color: "#fab80d"}, {translate: "tutorial.stats.right"}]
tellraw @s [{translate: "shop.description.sell"}]

# sound
execute at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
