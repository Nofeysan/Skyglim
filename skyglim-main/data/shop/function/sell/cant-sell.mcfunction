#> shop:sell/cant-sell
# 
# 買取できません処理
# 
# 

# tp
tp @n[type=minecraft:item] 119 51 195

# particle
particle minecraft:smoke 119 51 195 0.5 0.5 0.5 0.08 120
playsound minecraft:block.fire.extinguish voice @a 119 51 195 0.7 2
