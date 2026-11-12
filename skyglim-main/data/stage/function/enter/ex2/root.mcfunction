#> stage:enter/3/root
# 
# 入場するプレイヤーに実行させること！
# 
# 

# 誰もいなかったら再配置
execute unless score _ stage.ex.2 matches 1.. run function stage:enter/ex2/init

# tp
tp @s 9726 23 -224

# title
title @s times 10 50 20
title @s title {translate: "stage.ex2.name", color: "#f5de84"}
title @s subtitle [{text: "\ue011 Special II \ue010", color: "#66a5b8"}, ]

# 入場処理
function stage:enter/perform
