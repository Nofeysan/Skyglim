#> stage:enter/3/root
# 
# 入場するプレイヤーに実行させること！
# 
# 

# 誰もいなかったら再配置
execute unless score _ stage.12 matches 1.. run function stage:enter/12/init

# tp
tp @s 11120 225 -95 -90 0
effect give @s minecraft:night_vision infinite 0 true

# title
title @s times 10 50 20
title @s title {translate: "stage.12.name", color: "#f5de84"}
title @s subtitle [{text: "\ue011 Stage 12 \ue010", color: "#66a5b8"}, ]

# 入場処理
function stage:enter/perform
