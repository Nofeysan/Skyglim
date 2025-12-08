#> damageapi:calc_damage/enemy/armor/attack
# 
# 
# 
# 

#* 10% 通過済み
# ~100(10000) なら追加
scoreboard players add @s Absorption 300
execute if entity @s[scores={Absorption=10001..}] run scoreboard players set @s Absorption 10000

# 音
execute at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 2 2
