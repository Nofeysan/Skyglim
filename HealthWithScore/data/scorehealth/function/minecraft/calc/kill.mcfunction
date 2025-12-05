# バグ対策で体力は戻す
scoreboard players operation @s CurrentHealth = @s MaxHealth

# kill
kill @s

#? いろんな処理
tellraw @a [{"text": "\ue010 ","color": "gray"},{"selector": "@s"},{"text": " は死んでしまった。"}]
scoreboard players set @s DeathCount 1


