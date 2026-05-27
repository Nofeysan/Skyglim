#> story:villager/talk/avelian/talks
# 
# ストーリー用の固定話
# <score>
#   _ CanTalkWithMe: 1, 
#   $avelian_talks story.progress: <id>
#       に変更すること
# 

# 1: 初期
execute if score $avelian_talks story.progress matches 1 run function story:avelian/1/1

# 2: S1 クリア後、鑑定チュートリアル
execute if score $avelian_talks story.progress matches 2 run function story:avelian/1/1
