#> damageapi:calc_damage/enemy/armor/attack
# 
# 
# 
# 

#* 10% 通過済み
# ~100(10000) なら追加: max hp 1%
scoreboard players operation _ _ = @s MaxHealth
scoreboard players operation _ _ /= #100 num
scoreboard players operation @s Absorption += _ _

# 音
execute at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 1.6 2
