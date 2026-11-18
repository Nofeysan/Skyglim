#> story:avelian/1/1
# 
# ここから 会話文スタート
# 
# 

# tellraw
tellraw @a [{translate: "story.cecile"}, {translate: "story.cecile.ex2-14"}]

# playsound
execute at @n[tag=aj.skyglim.cecile.root] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5

# score
scoreboard players set $chromalier_collected _ 1
scoreboard players set $exx.boss.first _ 1

# aj remove
function aj:skyglim/cecile/remove/all

# fill
fill 9305 147 -395 9285 150 -408 minecraft:air destroy

# boss
schedule function story:cecile/3/15 80t
