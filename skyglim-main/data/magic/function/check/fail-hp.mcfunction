#> magic:check/fail
# 
# MP 足りないときの処理
# 
# @input
#   <score> req_mp _
#   <storage> magic: req_mp.value   実値
#                           show    表示用の値

# 通知
tellraw @s [{translate: "magic.no_hp.1", color: "#d94262"},{storage: "magic:", nbt: "req_hp.show", color: "gold"}, {translate: "magic.no_mp.2"}]

# 音
playsound minecraft:block.dispenser.dispense voice @s ~ ~ ~ 1 2

# tag
tag @s add magic.failed
