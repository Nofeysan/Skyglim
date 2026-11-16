#> stage:teleport/importants/9/act/1
# 
# 移動
# 
# 

# effects
execute positioned 10693 156 32 run particle minecraft:explosion ~ ~-4 ~ 7 4 4 0 300 force
execute positioned 10684 148 27 as @a[distance=..100] at @s run playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 0.6 1
execute positioned 10684 148 27 as @a[distance=..100] at @s run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 0.6 1.3

# 爆破
fill 10686 143 22 10709 157 39 minecraft:air replace minecraft:nether_wart_block

# kill
execute positioned 10693 156 32 run kill @n[type=minecraft:item, tag=s12.gate.open]

# villager
scoreboard players set $has_talks_knight CanTalkWithMe 1
