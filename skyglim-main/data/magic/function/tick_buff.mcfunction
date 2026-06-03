#> magic:tick_buff
# 
# 効果時間があるバフの処理を行う
# その他 tick 処理が必要なもの
# 

# buff
#execute if entity @a[scores={magic.buff.1=1..}] as @a[scores={magic.buff.1=1..}] run function magic:buff/buff.1

# 300005: リトルメテオ
execute if entity @e[type=minecraft:item, tag=300005] as @e[type=minecraft:item, tag=300005] at @s run function magic:act/tick/300005/root
