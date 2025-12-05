# text 部分
tellraw @s {"text": "\n---- [ 敵の情報 / Enemy Info. ] ------", "color": "#bce2e8"}

$tellraw @s [{"text": "\uE010 Target : ", "color": "gray"},{"text": "$(name)","color": "#ffffff"}]

$tellraw @s [{"text": "\uE000\uf101\uf101HP","color": "#e094d7"},{"text": " : ","color": "#ffffff"},{"text": "§a$(curhp)§f / §a$(maxhp)\n"}]

$tellraw @s [{"text": "\uE010 ", "color": "gray"},{"text": "$(lore1)","color": "#ffffff"}]
$tellraw @s [{"text": "\uE010 ", "color": "gray"},{"text": "$(lore2)","color": "#ffffff"}]

tellraw @s {"text": "--------------------------------", "color": "#bce2e8"}

# 音とか
execute at @s run playsound minecraft:block.enchantment_table.use voice @s ~ ~ ~ 1 2

execute at @n[tag=analyzed] run particle minecraft:witch ~ ~0.5 ~ 0.2 1 0.2 0.25 100
