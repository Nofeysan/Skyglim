# enemy: temp.uuid から macro で実施
$execute store result score current Temp run data get storage enemy: list.$(uuid).data.status.current_hp 1
scoreboard players operation current Temp -= DealtDamage Temp

# 運は正義
execute store result score justice Temp run random value 0..999999
execute on attacker if predicate modify:enchantment/armor.f/justice if score justice Temp matches 0 run scoreboard players set current Temp 0

$execute store result storage enemy: list.$(uuid).data.status.current_hp int 1 run scoreboard players get current Temp

###! デバッグ用
#-$tellraw @p [{text:"体力 : "},{"storage": "enemy:","nbt": "list.$(uuid).data.status.current_hp"},{text:"/"},{"storage": "enemy:","nbt": "list.$(uuid).data.status.max_hp"},{text:" ("},{"score":{"name":"DealtDamage","objective":"Temp"}},{text:") / ChargeRate : "},{"score":{"name":"chargerate","objective":"Temp"}}]

# 奈落にいたら current を0にする
execute if predicate damageapi:in_void run tp @s ~ ~200 ~
$execute if predicate damageapi:in_void run tellraw @a {text: "\uE010 奈落に落ちました。(uuid: list.$(uuid))"}
execute if predicate damageapi:in_void run scoreboard players set current Temp -1


