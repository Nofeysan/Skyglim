#> stage:enter/3/root
# 
# 入場するプレイヤーに実行させること！
# 
# 

# 誰もいなかったら再配置
execute unless score _ stage.3 matches 1.. run function stage:enter/3/init

# tp
tp @s 9728 20 76 90 0

# title
title @s times 10 50 20
title @s title {translate: "stage.3.name", color: "#f5de84"}
title @s subtitle [{text: "\ue011 Stage 3 \ue010", color: "#66a5b8"}, ]

# 入場処理
function stage:enter/perform
