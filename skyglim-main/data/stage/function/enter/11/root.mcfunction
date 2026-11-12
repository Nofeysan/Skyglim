#> stage:enter/11/root
# 
# 入場するプレイヤーに実行させること！
# 
# 

# 誰もいなかったら再配置
execute unless score _ stage.11 matches 1.. run function stage:enter/11/init

# tp
tp @s 10719 261 -318 180 0

# title
title @s times 10 50 20
title @s title {translate: "stage.11.name", color: "#f5de84"}
title @s subtitle [{text: "\ue011 Stage 11 \ue010", color: "#66a5b8"}, ]

# 入場処理
function stage:enter/perform
