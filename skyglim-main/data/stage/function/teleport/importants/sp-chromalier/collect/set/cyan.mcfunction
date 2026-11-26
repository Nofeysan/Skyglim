#> stage:teleport/importants/sp-chromalier/collect/set/cyan
# 
# 
# 
# 

# already?
    execute if score $chromalier_cyan _ matches 1 run return run function stage:teleport/importants/sp-chromalier/collect/return

# place
    setblock 9293 148 -395 minecraft:cyan_glazed_terracotta

# perform
    execute positioned 9295 149 -405 as @a[distance=..100] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.4 1.2

    summon minecraft:firework_rocket 9293 148.5 -395 {LifeTime: -1, FireworksItem: {id: "minecraft:firework_rocket", components: {"minecraft:fireworks": {explosions:[{shape: "large_ball", colors: [4513268], has_twinkle: true}]}}}}

# score
    scoreboard players set $chromalier_cyan _ 1
    scoreboard players add $chromalier_all _ 1

# tell
    tellraw @a [{text: '\n\ue010 水色のクロマリアを納品した！\n', color: '#44ddf4'}]

# kill
    kill @n[type=minecraft:item]
