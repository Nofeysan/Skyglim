#> crafting:check/0
# 
# アイテムがない状態でクラフトのボタンが押されたとき
# 
# 

# アイテムを入れろよ！！！！！！！！！
tellraw @a[distance=..7] {translate: "crafting.fail.noitem",color: "#d94262"}
playsound minecraft:block.dispenser.fail voice @a[distance=..7] ~ ~ ~ 1 2
