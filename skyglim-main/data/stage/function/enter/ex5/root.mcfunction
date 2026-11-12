#> stage:enter/3/root
# 
# 入場するプレイヤーに実行させること！
# 
# 

# 誰もいなかったら再配置
execute unless score _ stage.ex.5 matches 1.. run function stage:enter/ex5/init

# tp
tp @s 10255 9 -143 -180 0

# title
title @s times 10 50 20
title @s title {translate: "stage.ex5.name", color: "#f5de84"}
title @s subtitle [{text: "\ue011 Special V \ue010", color: "#66a5b8"}, ]

# 入場処理
function stage:enter/perform
