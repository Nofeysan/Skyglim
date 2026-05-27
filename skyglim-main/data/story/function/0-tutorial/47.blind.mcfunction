#> story:0-tutorial/47.blind
# 
# 盲目掛ける
# 
# 

# effect
effect give @a minecraft:blindness 10 0 true

# 自動進行
schedule function story:0-tutorial/47.tp 60t

# 後続用
fill 101 63 -324 99 61 -324 minecraft:air
fill 101 63 -313 99 61 -313 minecraft:air
