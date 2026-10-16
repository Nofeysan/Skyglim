#> stage:enter/5/root
# 
# 入場するプレイヤーに実行させること！
# 
# 

# 誰もいなかったら再配置
execute unless score _ stage.5 matches 1.. run function stage:enter/5/init

# tp
tp @s 9796 94 -306 180 0

# title
title @s times 10 50 20
title @s title {translate: "stage.5.name", color: "#f5de84"}
title @s subtitle [{text: "\ue011 Stage 5 \ue010", color: "#66a5b8"}, ]

# 入場処理
function stage:enter/perform
