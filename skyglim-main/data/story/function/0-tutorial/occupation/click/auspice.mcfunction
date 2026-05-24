#> story:0-tutorial/occupation/click/auspice
# 
# 
# 
# 

# 職チェック
execute unless score @s occupation matches 0 run return run function story:0-tutorial/occupation/click/fail

# 就職
function damageapi:status/player/occupation/auspice

# score
scoreboard players add $progress story.progress 1
