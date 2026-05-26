#> stage:enter/perform
# 
# ステージ入場時の演出
#\ -1 からのスタート
# 

# increment
scoreboard players add @s stage.enter 1

# effect
execute if score @s stage.enter matches 0 at @s run effect give @s minecraft:blindness 4 0 true
execute if score @s stage.enter matches 0 at @s run effect give @s minecraft:slowness 4 9 true

# sound
execute if score @s stage.enter matches 0 at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 1 0.5
execute if score @s stage.enter matches 20 at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 1 1.0
execute if score @s stage.enter matches 40 at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 1 2.0

# reset
execute if score @s stage.enter matches 41.. run scoreboard players set @s stage.enter -1
