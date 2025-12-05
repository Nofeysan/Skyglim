##> damageapi:advancement/player_tick2
##*
##* advancement でプレイヤー主体で毎tick実行させる (as @s)
##*
##*

# 初期登録
execute unless score @s StatusRegister matches -2147483648..2147483647 run function damageapi:status/player/first

##? ショップ, appraise, refinement: アイテムピックアップ
execute store success score @s RepaircostBoolen run clear @s *[minecraft:lock={components:{"minecraft:repair_cost":255}}] 0
execute if entity @s[scores={RepaircostBoolen=1}] run function modify:modify_playertick

##? ステータス関連
# 経験値
execute if score @s NextXp <= @s CurrentXp run function entity:scoreboard/level/root

# ポーションとか
clear @s minecraft:glass_bottle
execute if predicate shop:is_luck run function shop:act/root

#* メインハンド持ち替え検知
# 持ってないとき
execute store result score @s CurrentSelectSlot run data get entity @s SelectedItemSlot
execute unless score @s CurrentSelectSlot = @s LastSelectedSlot run function damageapi:status/player/check
scoreboard players operation @s LastSelectedSlot = @s CurrentSelectSlot

#// メインハンドのステータス計算
#//function damageapi:status/player/calc/mainhand

# ステータスを有効化
function damageapi:status/player/set_status

# ステータス表示
function damageapi:status/player/show_status

###? 職業関連
# scoreboard 表示 (adventure のみ)
#data modify storage status: player.uuid set from entity @s UUID[0]
#execute if entity @s[gamemode=adventure] run function entity:scoreboard/root with storage status: player

###? 右クリック検知用 (carrot_on_a_stick)
execute if entity @s[scores={UseMagic=1..}] run function damageapi:analyze/right_click

##? 魔法関連
#execute as @s[scores={UseMagic=1..}] run function magic:player_root
execute if entity @s[scores={UseMagicCheck=1..}] run scoreboard players remove @s UseMagicCheck 1

# Spawner 壊した？
execute if entity @s[scores={IsSpawnerMined=1..}] run function modify:enchantment/calc/spawner


# 死んだときに実行するやつ
execute if entity @s[scores={DeathCount=1..}] run scoreboard players add @s DeathCount 1
execute if entity @s[scores={DeathCount=3..}] run function damageapi:status/when_death

# 選択用アイテムを消す
clear @s *[minecraft:lock={components:{"minecraft:repair_cost": 255}}]

#* ステージギミック
function stage:player/gimmick

#! debug
# cursor アイテムとれる？
#execute if data entity @s Inventory[499] run effect give @a minecraft:levitation 1 1

# 進捗削除
advancement revoke @s only damageapi:player_tick2

