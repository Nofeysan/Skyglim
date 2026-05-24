#> story:villager/talk/root
# 
# 最も近くにいる村人と話したことにして実行する
# 
# 

# macro
$function story:villager/talk/$(role)/roll

# reset
scoreboard players set @s TalkToVillager 0
