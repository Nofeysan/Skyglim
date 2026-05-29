#> story:avelian/4/alpha-end
# 
# α版終わり！ありがとう！
# 
# 

# tell
tellraw @a [{text: "===========", color: "#6bc3fd"}, {text: " α版はここまでです！ ", color: "#e1c1cf"}, {text: "==========="}]
tellraw @a [{text: "プレイしていただきありがとうございました！"}]
tellraw @a [{text: ""}]
tellraw @a [{text: "物語はまだまだ続きますが、一旦はここまでとなります。"}]
tellraw @a [{text: "その先も、新システムも誠意制作中ですのでお楽しみに！", color: "#f5de84"}]
tellraw @a [{text: ""}]
tellraw @a [{text: "感想等は"}, {text: " Twitter(X)/Discord ", color: "#9279d3"}, {text: "などからよろしくお願いします。"}]
tellraw @a [{text: "バグでも要望でも開発の励みになりますのでお気軽に！"}]
tellraw @a [{text: "====================================", color: "#6bc3fd"}]

# playsound
execute at @n[type=minecraft:villager, predicate=story:is_avelian] run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 0.7 1.5
