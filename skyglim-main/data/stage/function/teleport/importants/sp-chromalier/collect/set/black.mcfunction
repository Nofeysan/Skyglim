#> stage:teleport/importants/sp-chromalier/collect/set/black
# 
# 
# 
# 

# already?
    execute if score $chromalier_black _ matches 1 run return run function stage:teleport/importants/sp-chromalier/collect/return

# place
    setblock 9285 148 -403 minecraft:black_glazed_terracotta

# perform
    execute positioned 9295 149 -405 as @a[distance=..100] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.4 1.2

    summon minecraft:firework_rocket 9285 148.5 -403 {LifeTime: -1, FireworksItem: {id: "minecraft:firework_rocket", components: {"minecraft:fireworks": {explosions:[{shape: "large_ball", colors: [7629484], has_twinkle: true}]}}}}

# score
    scoreboard players set $chromalier_black _ 1
    scoreboard players add $chromalier_all _ 1

# tell
    tellraw @a [{text: '\n\ue010 黒のクロマリアを納品した！\n', color: '#746aac'}]

# kill
    kill @n[type=minecraft:item]
