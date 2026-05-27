#> story:villager/talk/root
# 
# 最も近くにいる村人と話したことにして実行する
# 
# 

# macro
$function story:villager/talk/$(role)/roll

# sound
execute at @s run playsound minecraft:entity.villager.ambient voice @s ~ ~ ~ 0.7 1.5

# reset
scoreboard players set @s TalkToVillager 0
