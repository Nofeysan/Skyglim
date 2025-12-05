##> damageapi:player_tick
##* 
##* ステータスを常時データに反映させる
##* 
##* 

##+ HP
# act_health の 100 倍量を代入
scoreboard players operation @s MaxHealth = @s act_Health
scoreboard players operation @s MaxHealth *= #100 num

##+ SPD
# /1000 の値をマクロで代入
execute store result storage damageapi: temp.spd float 0.001 run scoreboard players get @s act_Speed
function damageapi:status/player/macro/set_spd with storage damageapi: temp

##+ MP
#\ *100を MaxMP に保存
scoreboard players operation @s MaxMP = @s act_MagicPoint
scoreboard players operation @s MaxMP *= #100 num
