#> stage:boss/15/move/breath/root
# 
# watre_breathing のリセット
# 400t ごと
# 

# AEC 召喚 (tag=gimmick.breath.s15)
    execute unless score $s15.boss.half _ matches 1 at @e[type=minecraft:marker, sort= random, limit= 2] run summon minecraft:area_effect_cloud ~ ~0.5 ~ {RadiusOnUse: 0, Radius: 2, RadiusPerTick: 0, WaitTime: 0, Duration: 400, potion_contents: {custom_effects: [{id: "minecraft:water_breathing", amplifier: 0, duration: 600}]}, custom_particle: {type: "minecraft:bubble"}, Tags: ["gimmick"]}
    execute if score $s15.boss.half _ matches 1 at @e[type=minecraft:marker, sort= random, limit= 1] run summon minecraft:area_effect_cloud ~ ~0.5 ~ {RadiusOnUse: 0, Radius: 2, RadiusPerTick: 0, WaitTime: 0, Duration: 400, potion_contents: {custom_effects: [{id: "minecraft:water_breathing", amplifier: 0, duration: 600}]}, custom_particle: {type: "minecraft:bubble"}, Tags: ["gimmick"]}

# reset
    scoreboard players set s15-breath BossMoves 0
