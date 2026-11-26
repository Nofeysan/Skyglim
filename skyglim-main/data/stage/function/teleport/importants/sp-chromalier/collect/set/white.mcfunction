#> stage:teleport/importants/sp-chromalier/collect/set/white
# 
# 
# 
# 

# already?
    execute if score $chromalier_white _ matches 1 run return run function stage:teleport/importants/sp-chromalier/collect/return

# place
    setblock 9305 148 -403 minecraft:white_glazed_terracotta

# perform
    execute positioned 9295 149 -405 as @a[distance=..100] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.4 1.2

    summon minecraft:firework_rocket 9305 148.5 -403 {LifeTime: -1, FireworksItem: {id: "minecraft:firework_rocket", components: {"minecraft:fireworks": {explosions:[{shape: "large_ball", colors: [14795215], has_twinkle: true}]}}}}

# score
    scoreboard players set $chromalier_white _ 1
    scoreboard players add $chromalier_all _ 1

# tell
    tellraw @a [{text: '\n\ue010 白のクロマリアを納品した！\n', color: '#e1c1cf'}]

# kill
    kill @n[type=minecraft:item]
