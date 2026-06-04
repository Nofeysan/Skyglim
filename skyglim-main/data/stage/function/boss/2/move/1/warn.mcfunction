#> stage:boss/2/move/1/warn
# 
# 警告
# 
# 

title @a[distance=..30] title {text: "[!]", color: "#c10e49"}
playsound minecraft:block.note_block.pling voice @a ~ ~ ~ 1 0.5
effect give @n[predicate=entity:entity_enemy, tag=boss, tag=s2] minecraft:glowing 1 0 true
effect give @n[predicate=entity:entity_enemy, tag=boss, tag=s2] minecraft:slowness 1 20 true
function entity:aec_manager/summon/.square {r: 9, t: 40, dmg: 12, str: 18}
