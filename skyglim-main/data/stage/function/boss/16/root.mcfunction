#> stage:boss/1/summon
# 
# 何回目ですか？
# 
# 

# ボタンとかを削除
    fill ~ ~ ~ ~ ~2 ~ minecraft:air
    setblock ~ ~ ~ minecraft:gray_stained_glass

# 初回の場合
    execute unless score $s16.boss.first _ matches 1 run function story:cecile/1/1

# 2回目以降
    execute if score $s16.boss.first _ matches 1 run function story:cecile/1/restart
