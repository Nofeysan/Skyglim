#> damageapi:status/player/token/select/hp
# 
# 
# 
# 

# token 確認
execute unless score @s token matches 1.. run return run function damageapi:status/player/token/select/fail

# token 消費
scoreboard players remove @s token 1
scoreboard players add @s token.useto.def 1

# DEF+
scoreboard players add @s Defence 1

# reload
function damageapi:status/player/check

# tell
tellraw @s [{text: "\ue010 ", color: "#fff6fe"}, {text: "DEF", color: "#5dccab"}, {"translate": "token.selected"}, {translate: "token.selected.remain"}, {score: {name: "@s", objective: "token"}, color: "gold"}, {text: ")"}]

# sound
execute at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 0.7 2
execute at @s run particle minecraft:dust{color: [0.364705882352941, 0.8, 0.670588235294118], scale: 0.9} ~ ~ ~ 0.5 0.8 0.5 0.1 120
