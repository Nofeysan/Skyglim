###
###> modify:enchantment/list/sound
###
### position: at @s
### 

# 音とか
playsound minecraft:block.enchantment_table.use voice @a ~ ~ ~ 1 2
playsound minecraft:item.bottle.fill_dragonbreath voice @a ~ ~ ~ 1 1

# 通知
tellraw @s [{text: "\uE010 ",color: "gray"},{text: "Enchantment を付与しました！",color: "#44ddf4"}]
