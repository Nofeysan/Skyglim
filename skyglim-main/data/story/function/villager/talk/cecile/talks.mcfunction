#> story:villager/talk/avelian/talks
# 
# ストーリー用の固定話
# <score>
#   $cecile_talks story.progress: <id>
#       に変更すること
# 
# 会話中: 99
# 

# ex2: talks
execute if score $has_talks_cecile CanTalkWithMe matches 1 run function story:cecile/2/1
