##> entity:set_data/root
##* 
##* entity: temp.id
##* 
##* 

# UUID を一旦格納
data modify storage enemy: temp.uuid set from entity @s UUID[0]

# macro で実行
$function entity:set_data/macro/$(id) with storage enemy: temp

#! debug
effect give @s minecraft:glowing 1 0 true
