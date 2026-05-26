#> story:1-guard/1
# 
# ここから 会話文スタート
# 
# 

# 会話分岐
tellraw @a [{text: "\uf104\ue010 ", color: "#94d3e6"}, {translate: "story.guard.1"}]
tellraw @a [{text: "\uf104\ue010 ", color: "#94d3e6"}, {translate: "story.guard.1"}]

# playsound
execute at @n[type=minecraft:villager, nbt={data: {role: "guard"}}] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5
