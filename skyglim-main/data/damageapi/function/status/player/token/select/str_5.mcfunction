#> damageapi:status/player/token/select/hp
# 
# 
# 
# 

# token 確認
execute unless score @s token matches 5.. run return run function damageapi:status/player/token/select/fail

# token 消費
scoreboard players remove @s token 5
scoreboard players add @s token.useto.str 5

# STR+
scoreboard players add @s Strength 5

# reload
function damageapi:status/player/check

# tell
tellraw @s [{text: "\ue010 ", color: "#fff6fe"}, {text: "STR", color: "#d94262"}, {"translate": "token.selected"}, {translate: "token.selected.remain"}, {score: {name: "@s", objective: "token"}, color: "gold"}, {text: ")"}]

# sound
execute at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 0.7 2
execute at @s run particle minecraft:dust{color: [0.850980392156863, 0.258823529411765, 0.384313725490196], scale: 0.9} ~ ~ ~ 0.5 0.8 0.5 0.1 120
