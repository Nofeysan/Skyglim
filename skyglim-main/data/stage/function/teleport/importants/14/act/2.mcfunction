#> stage:teleport/importants/9/act/1
# 
# ポータル削除
# 
# 


# effects
execute positioned 9024 77 36 run particle minecraft:dust{color: 13122613, scale: 1.7} ~ ~0.5 ~ 0.5 0.5 0.5 0 240 force

execute positioned 9024 77 36 as @a[distance=..100] at @s run playsound minecraft:item.mace.smash_air voice @a ~ ~ ~ 0.6 1
execute positioned 9024 77 36 as @a[distance=..100] at @s run playsound minecraft:block.anvil.place voice @a ~ ~ ~ 0.6 1

setblock 9024 77 36 minecraft:redstone_block

# next
schedule function stage:teleport/importants/14/act/3 40t
