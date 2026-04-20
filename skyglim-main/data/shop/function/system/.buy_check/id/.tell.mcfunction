#> shop:system/.buy_check/id/.tell
# 
# 購入時の演出・通知を管理する
#
# @input
# id: translate key
# 

# 音
execute at @s run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 1 2

# 通知
$tellraw @s [{text: "\uE010 ",color: "#44ddf4"},{translate: "$(id)",color: "#eccbd9"},{text: " を購入しました！"}]
