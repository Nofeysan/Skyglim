#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.15"}]
tellraw @a [{translate: "story.tutorial.15.tips", color: "gray"}]

# ここでプレイヤーに実行させる
# ランダムなプレイヤーに残滓を与える
loot replace entity @r[gamemode=adventure] inventory.13 loot story:tutorial/star
