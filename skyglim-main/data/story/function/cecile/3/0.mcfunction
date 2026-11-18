#> story:avelian/1/1
# 
# ここから 会話文スタート
# 
# 

# 全員 tp
    tp @a 9295 147 -412 0 0

# 帰り道塞ぐ
    fill 9296 147 -422 9294 147 -422 minecraft:polished_andesite
    fill 9296 148 -422 9294 148 -422 minecraft:smooth_stone_slab
    fill 9296 149 -422 9294 151 -422 minecraft:barrier

# 自動進行
    schedule function story:cecile/3/1 60t

# kill
    kill @n[tag=sp.monument.place, type=minecraft:marker]
    kill @n[tag=cecile, type=minecraft:villager]
