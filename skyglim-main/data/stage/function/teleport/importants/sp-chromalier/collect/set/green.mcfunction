#> stage:teleport/importants/sp-chromalier/collect/set/green
# 
# 
# 
# 

# already?
    execute unless score $chromalier_green _ matches 1 run return run function stage:teleport/importants/sp-chromalier/collect/return

# place
    setblock 9301 148 -396 minecraft:green_glazed_terracotta

# perform
    execute positioned 9295 149 -405 as @a[distance=..100] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.4 1.2

    summon minecraft:firework_rocket 9301 148.5 -396 {LifeTime: -1, FireworksItem: {id: "minecraft:firework_rocket", components: {"minecraft:fireworks": {explosions:[{shape: "large_ball", colors: [6147243], has_twinkle: true}]}}}}

# score
    scoreboard players set $chromalier_green _ 1
    scoreboard players add $chromalier_all _ 1

# kill
    kill @n[type=minecraft:item]
