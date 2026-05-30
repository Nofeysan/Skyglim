##> damageapi:player_tick
##* 
##* 初めてログインしたとき・リセットしたいときの処理
##* 
##* 

# 初期登録
scoreboard players set @s Health 100
scoreboard players set @s Strength 10
scoreboard players set @s CritChance 1
scoreboard players set @s CritDamage 100
scoreboard players set @s Defence 0
scoreboard players set @s Speed 100
scoreboard players set @s MagicPoint 100
scoreboard players set @s Luck 1

scoreboard players set @s NextXp 10
scoreboard players set @s CurrentXp 0
scoreboard players set @s CurrentLv 1
scoreboard players set @s occupation 0
scoreboard players set @s token 2
scoreboard players set @s token.useto.hp 0
scoreboard players set @s token.useto.str 0
scoreboard players set @s token.useto.cd 0
scoreboard players set @s token.useto.def 0
scoreboard players set @s token.useto.mp 0
scoreboard players set @s token.useto.luck 0

team leave @s
team join none

# 登録済み
scoreboard players set @s StatusRegister 1

# ステータスを有効化
function damageapi:status/player/check

# XP
xp set @s 0 points
xp set @s 0 levels

# stage 入場用
scoreboard players set @s stage.enter -1

# spawnpoint
setworldspawn 100 62 -350 0.0 0.0
tp 100 62 -350

tellraw @s [{text:"\uE010 ステータスの初期設定が完了しました。",color:"#9279d3"}]
