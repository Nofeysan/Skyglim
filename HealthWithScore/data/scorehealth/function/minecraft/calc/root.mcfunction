###? absorption -> CurrentHealth の順番
# 一旦仮スコアに保存
scoreboard players operation @s HealthTemp = @s DamageScore

# absorption で減らす
execute if entity @s[scores={Absorption=1..}] run scoreboard players operation @s DamageScore -= @s Absorption
execute if entity @s[scores={Absorption=1..}] run scoreboard players operation @s Absorption -= @s HealthTemp
execute if entity @s[scores={Absorption=..-1}] run scoreboard players set @s Absorption 0

# damage を Health に入れる
execute if entity @s[scores={DamageScore=1..}] run scoreboard players operation @s CurrentHealth -= @s DamageScore

# もし毒なら0にはしない
execute if predicate entity:is_poison if score @s CurrentHealth matches ..0 run scoreboard players set @s CurrentHealth 1

# ダメージ演出
execute store result score InvulnerableTime Temp run data get entity @s HurtTime
execute unless score InvulnerableTime Temp matches 1.. run damage @s 0.0001

# 奈落にいたら体力 0 にする
execute if predicate damageapi:in_void run scoreboard players set @s CurrentHealth -1

# ダメージ量リセット
scoreboard players set @s DamageScore 0
scoreboard players reset _ HealthTemp
