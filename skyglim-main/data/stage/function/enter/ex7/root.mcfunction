#> stage:enter/3/root
# 
# 入場するプレイヤーに実行させること！
# 
# 

# 誰もいなかったら再配置
execute unless score _ stage.ex.7 matches 1.. run function stage:enter/ex7/init

# tp
tp @s 8052 72 -143 -145 0

# title
title @s times 10 50 20
title @s title {translate: "stage.ex7.name", color: "#f5de84"}
title @s subtitle [{text: "\ue011 Special VII \ue010", color: "#66a5b8"}, ]

# 入場処理
function stage:enter/perform
