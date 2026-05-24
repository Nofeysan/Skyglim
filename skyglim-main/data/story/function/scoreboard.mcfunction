#> story:scoreboard
# 
# story 用スコアボード
# 
# 

# trigger
scoreboard objectives add story.trigger trigger

# score チェック用
scoreboard objectives add story.check dummy

# phase
scoreboard objectives add story.phase dummy

# 進行度
scoreboard objectives add story.progress dummy


# spawnpoint
setworldspawn 100 62 -350 0.0 0.0
