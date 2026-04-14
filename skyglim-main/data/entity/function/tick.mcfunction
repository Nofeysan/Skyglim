#> entity:tick
# 
# エンティティ周りのティック処理
# 
# 

# timer
scoreboard players add _ Timer 1
execute if score _ Timer matches 20.. run function damageapi:status/every_1sec

# entity_type かつ tag 付いてたら設定する
execute as @e[predicate=entity:entity_enemy, predicate=entity:is_req_multiplier] at @s run function entity:set_data/root

# AEC処理
execute if entity @e[type=minecraft:block_display, tag=req_trans] as @e[type=minecraft:block_display, tag=req_trans] run function entity:aec_manager/transport/root
execute if entity @e[type=minecraft:armor_stand, predicate=entity:is_portal_cooldown_0] as @e[type=minecraft:armor_stand, predicate=entity:is_portal_cooldown_0] run kill @s
execute if entity @e[type=minecraft:armor_stand, predicate=entity:is_portal_cooldown_2] as @e[type=minecraft:armor_stand, predicate=entity:is_portal_cooldown_2] at @s run function entity:aec_manager/damage/root

#* すべてのモブに対してダメージを受けた時の処理
# levitated
execute as @e[predicate=entity:entity_enemy, tag=levitated, predicate=damageapi:is_on_ground] run tag @s remove levitated

execute as @a[predicate=entity:get_damage_10] if predicate entity:is_poison run function damageapi:calc_damage/player/calc
execute as @e[predicate=entity:get_damage] run function damageapi:calc_damage/root
scoreboard players remove additional_done Temp 1
execute as @a[scores={UnbreakingCoolDown=1..}] run scoreboard players remove @a UnbreakingCoolDown 1

# ダメージテキスト・魔法用消す
kill @e[predicate=damageapi:old_stick]
execute as @e[predicate=damageapi:old_armorstand] run function magic:kill_armorstand

# 選択用アイテムを消す
kill @e[predicate=damageapi:is_not_item]

# 職業スコアボード
#function entity:scoreboard/root
