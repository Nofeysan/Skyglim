#> item:currency/summon
# 
# 通貨を指定した分だけ召喚する
# 
# @input
#   l, lb, el, elb: 通貨の量、0~64 [int]
#   pos: 召喚する座標
# 

# scoreboard に保存
$scoreboard players set l _ $(l)
$scoreboard players set lb _ $(lb)
$scoreboard players set el _ $(el)
$scoreboard players set elb _ $(elb)

# storage に保存
$data modify storage items: currency set value {l: $(l), lb: $(lb), el: $(el), elb: $(elb), pos: "$(pos)"}

# 各通貨ごとに召喚
execute if score l _ matches 1.. run function item:currency/cur/l with storage items: currency
execute if score lb _ matches 1.. run function item:currency/cur/lb with storage items: currency
execute if score el _ matches 1.. run function item:currency/cur/el with storage items: currency
execute if score elb _ matches 1.. run function item:currency/cur/elb with storage items: currency

# 演出
$playsound minecraft:entity.item.pickup voice @a $(pos) 1 1
$particle minecraft:dust{color: [0.215686274509804, 0.333333333333333, 0.741176470588235], scale: 1.2} $(pos) 0.3 0.3 0.3 0.2 80 force @a
