#> stage:teleport/importants/sp-chromalier/collect/set/magenta
# 
# 
# 
# 

# already?
    execute if score $chromalier_magenta _ matches 1 run return run function stage:teleport/importants/sp-chromalier/collect/return

# place
    setblock 9286 148 -399 minecraft:magenta_glazed_terracotta

# perform
    execute positioned 9295 149 -405 as @a[distance=..100] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.4 1.2

    summon minecraft:firework_rocket 9286 148.5 -399 {LifeTime: -1, FireworksItem: {id: "minecraft:firework_rocket", components: {"minecraft:fireworks": {explosions:[{shape: "large_ball", colors: [12544500], has_twinkle: true}]}}}}

# score
    scoreboard players set $chromalier_magenta _ 1
    scoreboard players add $chromalier_all _ 1

# tell
    tellraw @a [{text: '\n\ue010 紫のクロマリアを納品した！\n', color: '#bf69f4'}]

# kill
    kill @n[type=minecraft:item]
