#> damageapi:status/player/token/select/hp
# 
# 
# 
# 

# token 確認
execute unless score @s token matches 1.. run return run function damageapi:status/player/token/select/fail

# token 消費
scoreboard players remove @s token 1
scoreboard players add @s token.useto.hp 1

# HP+
scoreboard players add @s Health 2

# reload
function damageapi:status/player/check

# tell
tellraw @s [{text: "\ue010 ", color: "#fff6fe"}, {text: "HP", color: "#e094d7"}, {"translate": "token.selected"}, {translate: "token.selected.remain"}, {score: {name: "@s", objective: "token"}, color: "gold"}, {text: ")"}]

# sound
execute at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 0.7 1
execute at @s run particle minecraft:dust{color: [0.87843137254902, 0.580392156862745, 0.843137254901961], scale: 0.9} ~ ~ ~ 0.5 0.8 0.5 0.1 120
