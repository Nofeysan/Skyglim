#> stage:enter/3/root
# 
# 入場するプレイヤーに実行させること！
# 
# 

# 誰もいなかったら再配置
execute unless score _ stage.ex.8 matches 1.. run function stage:enter/ex8/init

# tp
tp @s 6956 62 -92 90 0

# title
title @s times 10 50 20
title @s title {translate: "stage.ex8.name", color: "#f5de84"}
title @s subtitle [{text: "\ue011 Special VIII \ue010", color: "#66a5b8"}, ]

# 入場処理
function stage:enter/perform
