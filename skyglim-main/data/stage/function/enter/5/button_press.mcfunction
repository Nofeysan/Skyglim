#> stage:enter/5/button_press
# 
# ボタンを押したときの処理
# 
# 

# ボタン削除
setblock ~ ~2 ~ minecraft:air

# score add
scoreboard players add $button s5.gimmick 1

# sound
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.3 2

# progress
tellraw @a [{text: '', color: 'gold'}, {translate: "stage.5.button.press", color: "dark_aqua"}, {text: '['}, {score: {name: "$button", objective: "s5.gimmick"}}, {text: '/4]'}]

# 4つなら完了
execute if score $button s5.gimmick matches 4 run function stage:enter/5/button_open
