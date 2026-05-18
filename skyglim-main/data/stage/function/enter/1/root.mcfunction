#> stage:enter/1/root
# 
# 入場するプレイヤーに実行させること！
# 
# 

# 誰もいなかったら再配置
execute unless score _ stage.1 matches 1.. run function stage:enter/1/init

# tp
tp @s 9943 44 1 90 0

# 入場処理
function stage:enter/perform
