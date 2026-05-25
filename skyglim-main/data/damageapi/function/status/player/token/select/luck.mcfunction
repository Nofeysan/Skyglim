#> damageapi:status/player/token/select/hp
# 
# 
# 
# 

# token 確認
execute unless score @s token matches 1.. run return run function damageapi:status/player/token/select/fail

# token 消費
scoreboard players remove @s token 1
scoreboard players add @s token.useto.luck 1

# LUCK+
scoreboard players add @s Luck 3

# reload
function damageapi:status/player/check

# tell
tellraw @s [{text: "\ue010 ", color: "#fff6fe"}, {text: "LUCK", color: "#bfe493"}, {"translate": "token.selected"}, {translate: "token.selected.remain"}, {score: {name: "@s", objective: "token"}, color: "gold"}, {text: ")"}]

# sound
execute at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 0.7 2
execute at @s run particle minecraft:dust{color: [0.749019607843137, 0.894117647058824, 0.576470588235294], scale: 0.9} ~ ~ ~ 0.5 0.8 0.5 0.1 120
