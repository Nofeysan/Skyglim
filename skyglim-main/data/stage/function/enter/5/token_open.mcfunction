#> stage:enter/5/token_open
# 
# token ok
# 
# 

# sound
execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.3 1.6

# tell
tellraw @a {translate: 'stage.5.token.open', color: "#fff6fe"}

# open
fill 9794 99 -356 9798 95 -356 minecraft:air destroy
