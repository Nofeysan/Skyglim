##> damageapi:player_tick
##* 
##* 必要経験値量を超えた時
##* NextXp <= CurrentXp
##* 

# まず経験値をリセットしてレベルを上げる・token
scoreboard players operation @s CurrentXp -= @s NextXp
scoreboard players add @s CurrentLv 1
scoreboard players add @s token 2

# 通知しましょうね～
tellraw @a [{text: "\uE010 ",color: "#7fd6e2"},{"selector": "@s"},{text: " がレベル ",color: "#7fd6e2"},{"score": {"name": "@s","objective": "CurrentLv"},color: "#ffd728"},{text: " になりました！",color: "#7fd6e2"}]
execute at @a run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 1 2

# 次の経験値計算
scoreboard players set @s NextXp 5
scoreboard players operation @s NextXp *= @s CurrentLv
scoreboard players operation @s NextXp *= @s CurrentLv

scoreboard players set _ NextXp 25
scoreboard players operation _ NextXp *= @s CurrentLv

scoreboard players operation @s NextXp += _ NextXp
scoreboard players remove @s NextXp 25

# 職業ごとにステータス上昇
execute if score @s occupation matches 0 run function entity:scoreboard/level/none
execute if score @s occupation matches 1 run function entity:scoreboard/level/archer
execute if score @s occupation matches 2 run function entity:scoreboard/level/berserker
execute if score @s occupation matches 3 run function entity:scoreboard/level/tank
execute if score @s occupation matches 4 run function entity:scoreboard/level/magic
execute if score @s occupation matches 5 run function entity:scoreboard/level/zuishou

# ステータスを有効化
function damageapi:status/player/check

# token
scoreboard players add @s token 1

# 全回復
scoreboard players operation @s CurrentHealth = @s MaxHealth
scoreboard players operation @s CurrentMP = @s MaxMP

# もし、まだ超えてたら再帰
execute if score @s NextXp <= @s CurrentXp run function entity:scoreboard/level/root
