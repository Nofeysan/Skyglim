#> story:0-tutorial/47.blind
# 
# tp
# 
# 

# tp 
tp @a 89 47 80 0 0
effect give @a minecraft:slow_falling 3 0 true
effect clear @a minecraft:saturation

# score
scoreboard players set _ story.phase -1

# spawnpoint
spawnpoint @a 89 51 183

# allay
kill @n[type=minecraft:allay, tag=kalmia]
