#> stage:enter/3/root
# 
# 入場するプレイヤーに実行させること！
# 
# 

# 誰もいなかったら再配置
execute unless score _ stage.ex.3 matches 1.. run function stage:enter/ex3/init

# tp
tp @s 9963 101 -537 180 0

# title
title @s times 10 50 20
title @s title {translate: "stage.ex3.name", color: "#f5de84"}
title @s subtitle [{text: "\ue011 Special III \ue010", color: "#66a5b8"}, ]

# 入場処理
function stage:enter/perform
