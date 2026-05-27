#> story:0-tutorial/start
# 
# この function を実行することでチュートリアル関連のストーリーが進む
# 
# 

# ボタン削除
setblock ~ ~2 ~ minecraft:air

# trigger 設定
scoreboard players enable @a story.trigger

# tutorial phase 設定
scoreboard players set _ story.phase 1

# tp
tp @a 100 61 -310

# effect
effect give @a minecraft:blindness 12 0 true
effect give @a minecraft:saturation infinite 0 true

# story 開始
schedule function story:0-tutorial/1 100t
