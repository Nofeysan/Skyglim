#> magic:check/fail
# 
# MP 足りないときの処理
# 
# @input
#   <score> req_mp _
#   <storage> magic: req_mp.value
# 

# 通知
tellraw @s [{translate: "magic.no_mp.1", color: "#d94262"},{storage: "magic:", nbt: "req_mp.value", color: "gold"}, {translate: "magic.no_mp.2"}]

# 音
playsound minecraft:block.dispenser.dispense voice @s ~ ~ ~ 1 2
