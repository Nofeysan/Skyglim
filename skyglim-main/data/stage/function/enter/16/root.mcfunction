#> stage:enter/3/root
# 
# 入場するプレイヤーに実行させること！
# 
# 

# 誰もいなかったら再配置
execute unless score _ stage.16 matches 1.. run function stage:enter/16/init

# tp
tp @s 10119 5 -152 -180 0

# title
#title @s times 10 50 20
#title @s title {translate: "stage.16.name", color: "#f5de84"}
#title @s subtitle [{text: "\ue011 Stage 16 \ue010", color: "#66a5b8"}, ]

# 入場処理
#function stage:enter/perform
