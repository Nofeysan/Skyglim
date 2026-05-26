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

# 会話
scoreboard objectives add TalkToVillager minecraft.custom:minecraft.talked_to_villager

# 帰還用
scoreboard objectives add ReturnPearl dummy

# boss 用
scoreboard objectives add BossMoves dummy
scoreboard objectives add BossSlain dummy
