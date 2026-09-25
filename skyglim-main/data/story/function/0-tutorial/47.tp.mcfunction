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

# 途中参加者用
fill 115 99 -185 113 96 -185 minecraft:end_gateway{exit_portal: [90, 33, 80], ExactTeleport: true}

# kalmia
execute as @n[tag=aj.skyglim.kalmia.root] run function aj:skyglim/kalmia/remove/this
