#> damageapi:status/player/regen_comp
# 
# 体力などを全回復させる
# 
# 

# max
scoreboard players operation @s CurrentHealth = @s MaxHealth
scoreboard players operation @s CurrentMP = @s MaxMP

# tell
tellraw @s {translate: "heal.max", color: "#42ffff"}
