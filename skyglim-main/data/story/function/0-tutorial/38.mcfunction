#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.38"}]

# player に選ばせる時間
# player 全数を取得
execute store result score $all story.progress if entity @a[gamemode=adventure]
scoreboard players set $progress story.progress 0

# 看板出現
clone 58 56 -235 79 62 -217 103 94 -249

execute positioned 114 96 -241 run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 0.5 2
execute positioned 114 96 -241 run particle minecraft:end_rod ~ ~ ~ 0.3 2 3 0.1 240

# 自動進行
#schedule function story:0-tutorial/2 60t

# playsound
execute at @n[tag=aj.skyglim.kalmia.root] run playsound minecraft:entity.allay.item_given voice @a ~ ~ ~ 0.7 1.5
