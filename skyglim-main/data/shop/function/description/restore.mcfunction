#> shop:description/restore
# 
# 説明文
# 
# 

# tell
tellraw @s [{translate: "tutorial.stats.left", color: "#bce2e8"}, {translate: "shop.sign.restore", color: "#fab80d"}, {translate: "tutorial.stats.right"}]
tellraw @s [{translate: "shop.description.restore.1"}]
tellraw @s [{translate: "shop.description.restore.2"}]
tellraw @s [{translate: "shop.description.restore.3"}]

# sound
execute at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
