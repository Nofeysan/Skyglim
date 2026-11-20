#> stage:teleport/importants/normal-ending/end
# 
# 
# 
# 

# remove
    execute positioned -212 85 151 as @n[tag=aj.skyglim.avelian.root] at @s run function aj:skyglim/avelian/remove/this
    execute positioned -212 85 151 as @n[tag=aj.skyglim.cecile.root] at @s run function aj:skyglim/cecile/remove/this
    execute positioned -212 85 151 as @n[tag=aj.skyglim.kalmia.root] at @s run function aj:skyglim/kalmia/remove/this

    time set noon

# score
    scoreboard players set $cant_use_pearl _ 0
    scoreboard players set $not_show_stats _ 0
    scoreboard players set $happy_ending _ -2

# player
    kill @n[type=minecraft:armor_stand, tag=happy.ending]
    gamemode adventure @a
    #! 将来的にはシアターに移動させたい
    tp @a 46 53 197 0 0

# cecile
    forceload add 87 243 87 243

    execute unless score $happy_ending_done _ matches 1 positioned 87 54 243 rotated -150 0 positioned ^ ^ ^0.5 run function aj:skyglim/cecile/summon
    execute unless score $happy_ending_done _ matches 1 positioned 87 54 243 rotated -150 0 run summon minecraft:villager ~ ~ ~ {Invulnerable: true, Silent: true, Rotation: [0, 0], data: {role: "cecile"}, VillagerData: {profession: "minecraft:mason", type: "minecraft:taiga"}, NoAI: true, Offers: {}, active_effects: [{id: "minecraft:invisibility", duration: -1, amplifier: 1, show_particles: false}], Tags: ['cecile']}

    forceload remove 87 243 87 243

    scoreboard players set $happy_ending_done _ 1
