###* /kill された 1tick 後
# 盲目
effect give @s minecraft:blindness 4 0 true

# title?
title @s title ""
title @s subtitle {"text": "死んでしまった！","color": "#d94262"}

# スコアリセット
scoreboard players reset @s DeathCount
