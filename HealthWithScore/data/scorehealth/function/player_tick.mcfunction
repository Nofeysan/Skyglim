#> (advancement) player_tick
#
# advancement でプレイヤー主体で毎tick実行させる
#
#

##? as 指定済み
# 初期数値設定
execute as @a unless score @s CurrentHealth matches -2147483648..2147483647 run function scorehealth:minecraft/setting/reset

# ダメージが存在したら計算
execute if score @s DamageScore > #0 num run function scorehealth:minecraft/calc/root

# HP < 0 なら kill 処理
execute if score @s CurrentHealth matches ..0 run function scorehealth:minecraft/calc/kill

# attribute 設定
function scorehealth:minecraft/calc/set_attribute

# 表示用計算
function scorehealth:minecraft/calc/scoreboard

# 進捗削除
advancement revoke @s only scorehealth:player_tick
