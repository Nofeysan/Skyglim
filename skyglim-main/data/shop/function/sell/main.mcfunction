#> shop:sell/main
# 
# 売却の main 処理部分
# 
# 

#* 式
#* Lapis = Sell * Count * Error
# Sell: そのアイテムの売却値
# Count: アイテムの個数
# Error: 揺れ(0.8~1.2)

# 一般式を代入
data modify storage km_solver: inputs append value {f: {mul: [{mul: [{v: "S"}, {v: "C"}]}, {v: "E"}]}}

# 初期値を代入
data modify storage km_solver: vars set value {S:0.0f, C:0.0f, E:1.0f}

# 変数入力
    # S: sell 値
    data modify storage km_solver: vars.S set from entity @n[type=minecraft:item] data.sell

    # C: count
    data modify storage km_solver: vars.S set from entity @n[type=minecraft:item] Item.count

    # 乱数でちょっと変える (*0.90-1.05)
    execute store result storage km_solver: vars.E float 0.01 run random value 80..120

# 実行
execute at @p run function km_solver:solve

# score に保存（切り捨て）
execute store result score $total _ run data get storage km_solver: outputs[0]

# 各通貨量取得
# L: 1, LB: 64, EL: 4096, ELB: 262144
    # reset
    scoreboard players set $sell_l _ 0
    scoreboard players set $sell_lb _ 0
    scoreboard players set $sell_el _ 0
    scoreboard players set $sell_elb _ 0

    # ELB
    execute if score $total _ matches 262144.. run function shop:sell/roop/elb

    # EL
    execute if score $total _ matches 4096.. run function shop:sell/roop/el

    # LB
    execute if score $total _ matches 64.. run function shop:sell/roop/lb

    # L
    scoreboard players operation $sell_l _ = $total _

# storage に保存
data modify storage sell: data set value {l: 0, lb: 0, el: 0, elb: 0, pos: "116 52 195"}
execute store result storage sell: data.elb int 1 run scoreboard players get $sell_elb _
execute store result storage sell: data.el int 1 run scoreboard players get $sell_el _
execute store result storage sell: data.lb int 1 run scoreboard players get $sell_lb _
execute store result storage sell: data.l int 1 run scoreboard players get $sell_l _

# 実行
function item:currency/summon with storage sell: data

# kill
kill @n[type=minecraft:item]
