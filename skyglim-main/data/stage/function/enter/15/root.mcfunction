#> stage:enter/3/root
# 
# 入場するプレイヤーに実行させること！
# 
# 

# 誰もいなかったら再配置
execute unless score _ stage.15 matches 1.. run function stage:enter/15/init

# tp
tp @s 6917 71 -9 90 0

# title
title @s times 10 50 20
title @s title {translate: "stage.15.name", color: "#f5de84"}
title @s subtitle [{text: "\ue011 Stage 15 \ue010", color: "#66a5b8"}, ]

# 入場処理
function stage:enter/perform
