#> damageapi:status/player/token/enter
# 
# 
# 
# 

# tp
tp @s 13 79 593

# 表示
tellraw @s [{"text": "[!] ", color: "gold"}, {translate: "token.get.count"}, {score: {name: "@s", objective: "token"}}]

# sound
execute at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 0.5
