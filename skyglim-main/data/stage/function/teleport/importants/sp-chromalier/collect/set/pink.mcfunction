#> stage:teleport/importants/sp-chromalier/collect/set/pink
# 
# 
# 
# 

# already?
    execute if score $chromalier_pink _ matches 1 run return run function stage:teleport/importants/sp-chromalier/collect/return

# place
    setblock 9289 148 -396 minecraft:pink_glazed_terracotta

# perform
    execute positioned 9295 149 -405 as @a[distance=..100] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.4 1.2

    summon minecraft:firework_rocket 9289 148.5 -396 {LifeTime: -1, FireworksItem: {id: "minecraft:firework_rocket", components: {"minecraft:fireworks": {explosions:[{shape: "large_ball", colors: [14718167], has_twinkle: true}]}}}}

# score
    scoreboard players set $chromalier_pink _ 1
    scoreboard players add $chromalier_all _ 1

# tell
    tellraw @a [{text: '\n\ue010 桃色のクロマリアを納品した！\n', color: '#e094d7'}]

# kill
    kill @n[type=minecraft:item]
