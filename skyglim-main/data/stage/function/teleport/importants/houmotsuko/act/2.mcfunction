#> stage:teleport/importants/9/act/1
# 
# ポータル削除
# 
# 

# effects
tp @n[tag=s12.gate.open] 10693 158.5 32
execute positioned 10693 158.5 32 run particle minecraft:dust{color: 15115431, scale: 1.7} ~ ~0.5 ~ 0.7 0.7 0.7 0 320 force
execute positioned 10693 158.5 32 run particle minecraft:dust{color: 16774910, scale: 1.2} ~ ~0.5 ~ 1.4 1.4 1.4 0 320 force

execute positioned 10693 158.5 32 run particle minecraft:dripping_obsidian_tear ~ ~ ~ 5.5 5 4 1 2400
execute positioned 10684 148 27 as @a[distance=..100] at @s run playsound minecraft:entity.ender_eye.death voice @a ~ ~ ~ 0.6 1

# next
schedule function stage:teleport/importants/12/act/3 110t
