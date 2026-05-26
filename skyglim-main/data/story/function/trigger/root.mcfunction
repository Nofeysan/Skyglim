#> story:trigger/root
# 
# trigger 関連のやつ
# 
# 

##* 分岐
# 難易度選択
execute if score @s story.trigger matches 1..3 run function story:-1-diff/select/root

# 職業選択
execute if score @s story.trigger matches 10..14 run function story:trigger/occupation/base

# ステータス割り振り
execute if score @s story.trigger matches 100 run function damageapi:status/player/token/enter

# reset
scoreboard players set @s story.trigger -1
