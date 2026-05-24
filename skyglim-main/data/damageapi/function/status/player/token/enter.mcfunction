#> damageapi:status/player/token/enter
# 
# 
# 
# 

# tp
tp @s 64 40 186 -90 0

# 表示
tellraw @s [{translate: "token.get.count", color: "gold"}, {score: {name: "@s", objective: "token"}}]

# sound
execute at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 0.5
