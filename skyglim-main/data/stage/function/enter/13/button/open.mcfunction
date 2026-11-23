#> stage:enter/13/button/open
# 
# 
# 
# 

# tell
    tellraw @a [{translate: 'stage.13.button.press.open', color: '#6eb487'}]

# sound
    execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.4 0.6

# open
    fill 9018 17 -98 9019 17 -98 minecraft:redstone_torch
