#> stage:teleport/importants/normal-ending/end
# 
# 
# 
# 

# score
    scoreboard players set $cant_use_pearl _ 0
    scoreboard players set $not_show_stats _ 0
    scoreboard players set $normal_ending _ -2

# player
    kill @n[type=minecraft:armor_stand, tag=normal.ending]
    gamemode adventure @a
    tp @a 46 53 197 0 0

# item
    loot spawn 45 54.25 206.0 loot stage:importants/houmotsuko/key
    execute positioned 45 54.25 206.0 run data modify entity @n[type=minecraft:item] PickupDelay set value 20
    execute positioned 45 54.25 206.0 run data modify entity @n[type=minecraft:item] Glowing set value true
    execute positioned 45 54.25 206.0 run data modify entity @n[type=minecraft:item] NoGravity set value true
    execute positioned 45 54.25 206.0 run data modify entity @n[type=minecraft:item] Motion set value [0.0d, 0.0d, 0.0d]

# cecile
    forceload add 9258 -442 9332 -368

    execute positioned 9295 147 -398 rotated 0 0 run function aj:skyglim/cecile/summon
    execute positioned 9295 147 -398 rotated 0 0 run summon minecraft:villager ~ ~ ~ {Invulnerable: true, Silent: true, Rotation: [0, 0], data: {role: "cecile"}, VillagerData: {profession: "minecraft:mason", type: "minecraft:taiga"}, NoAI: true, Offers: {}, active_effects: [{id: "minecraft:invisibility", duration: -1, amplifier: 1, show_particles: false}], Tags: ['cecile']}

    scoreboard players set $has_talks_cecile CanTalkWithMe 1

    forceload remove 9258 -442 9332 -368
