##? 割合を計算
# 最大体力補正
scoreboard players operation @s CurrentHealth < @s MaxHealth

# スコアを保存
scoreboard players operation @s CalcHealth = @s CurrentHealth

# 100倍にして整数値の % にする
scoreboard players operation @s CalcHealth *= #100 CalcHealth

# max health で割る
scoreboard players operation @s CalcHealth /= @s MaxHealth

# /5 を storage に保存
execute store result storage healthscore: temp.rate float 0.2 run scoreboard players get @s CalcHealth

# macro で変換
function scorehealth:minecraft/calc/macro/attribute with storage healthscore: temp

# attack_damage 調整
attribute @s minecraft:attack_damage base set 10

# 体力回復
effect give @s minecraft:instant_health 1 19 true
effect give @s minecraft:resistance 2 19 true
