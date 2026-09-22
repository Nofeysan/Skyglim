#> stage:enter/7/open/open
# 
# 
# 
# 

# tell
tellraw @a[dx=57, dy=15, dz=50] {translate: 'stage.7.lamp.open', color: '#fba03f'}

# sound
playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.3 0.6

# open
fill 9878 15 -356 9878 11 -360 minecraft:air destroy
