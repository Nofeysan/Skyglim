#> damageapi:status/player/token/select/hp
# 
# 
# 
# 

# token 確認
execute unless score @s token matches 1.. run return run function damageapi:status/player/token/select/fail

# token 消費
scoreboard players remove @s token 1
scoreboard players add @s token.useto.mp 1

# MP+
scoreboard players add @s MagicPoint 2

# reload
function damageapi:status/player/check

# tell
tellraw @s [{text: "\ue010 ", color: "#fff6fe"}, {text: "MP", color: "#9279d3"}, {"translate": "token.selected"}, {translate: "token.selected.remain"}, {score: {name: "@s", objective: "token"}, color: "gold"}, {text: ")"}]

# sound
execute at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 0.7 2
execute at @s run particle minecraft:dust{color: [0.572549019607843, 0.474509803921569, 0.827450980392157], scale: 0.9} ~ ~ ~ 0.5 0.8 0.5 0.1 120
