#> damageapi:analyze/act/macro/tell
# 
# 通知
# 
# 

# text 部分
tellraw @s {text: "\n-\uf200-\uf200-\uf200- [ 敵の情報 / Enemy Info. ] -\uf200-\uf200-\uf200-", color: "#bce2e8"}

$tellraw @s [{text: "\uE010 Target : ", color: "gray"}, $(name), {text: " \uE011", color: "gray"}]

$tellraw @s [{text: "\uE000\uf101\uf101HP",color: "#e094d7"},{text: " : ",color: "#ffffff"},{text: "§a$(curhp)§f / §a$(maxhp)\n"}]

$tellraw @s [{translate: "$(lore)",color: "#ffffff"}]

tellraw @s {translate: "common.lore.line.2", color: "#bce2e8"}

# 音とか
execute at @s run playsound minecraft:block.enchantment_table.use voice @s ~ ~ ~ 1 2

execute at @n[tag=analyzed] run particle minecraft:witch ~ ~0.5 ~ 0.2 1 0.2 0.25 100
