#> story:avelian/1/1
# 
# ここから 会話文スタート
# 
# 

# tellraw
tellraw @a [{translate: "story.cecile"}, {translate: "story.cecile.ex1-18"}]
tellraw @a [{translate: "story.cecile.ex1-18-t", color: '#fab80d'}]

# 自動進行
schedule function story:cecile/1/2 80t

# playsound
execute at @n[tag=aj.skyglim.cecile.root] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5

# scorereset
scoreboard players set $has_talks_cecile CanTalkWithMe 0
scoreboard players set $chromalier_white _ 0
scoreboard players set $chromalier_yellow _ 0
scoreboard players set $chromalier_green _ 0
scoreboard players set $chromalier_light_blue _ 0
scoreboard players set $chromalier_cyan _ 0
scoreboard players set $chromalier_pink _ 0
scoreboard players set $chromalier_magenta _ 0
scoreboard players set $chromalier_black _ 0
scoreboard players set $chromalier_all _ 0

# clone
clone 9259 97 -441 9331 116 -369 9259 141 -441

# perform
particle minecraft:end_rod 9295 147 -405 9 12 9 0.1 1200
particle minecraft:dust{color: 12378856, scale: 1.2} 9295 147 -405 9 12 9 0.1 1200
particle minecraft:dust{color: 16490559, scale: 1.2} 9295 147 -405 9 12 9 0.1 1200

summon minecraft:marker 9295 148 -405 {Tags: ['sp.monument.place']}
