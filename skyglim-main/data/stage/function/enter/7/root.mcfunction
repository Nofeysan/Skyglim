#> stage:enter/3/root
# 
# 入場するプレイヤーに実行させること！
# 
# 

# 誰もいなかったら再配置
execute unless score _ stage.7 matches 1.. run function stage:enter/7/init

# tp
tp @s 9910 25 -358 90 0

# title
title @s times 10 50 20
title @s title {translate: "stage.7.name", color: "#f5de84"}
title @s subtitle [{text: "\ue011 Stage 7 \ue010", color: "#66a5b8"}, ]

# 入場処理
function stage:enter/perform
