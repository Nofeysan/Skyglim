# 共通部分
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value '[\
{text: "       ◆ ",color: "#11bbef",italic: false},\
{text: "E", color: "#15c2ef"},\
{text: "n", color: "#18c9ee"},\
{text: "c", color: "#1cd2ec"},\
{text: "h", color: "#20dae9"},\
{text: "a", color: "#24e3e6"},\
{text: "n", color: "#27ebe2"},\
{text: "t", color: "#2af3dd"},\
{text: "m", color: "#2df9d7"},\
{text: "e", color: "#2fffd1"},\
{text: "n", color: "#31ffca"},\
{text: "t", color: "#32ffc3"},\
{text: " ◆",color: "#32ffbc"}\
]'

# それぞれのやつ
#* 名前
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value \
'[{text: "\\uE010 ",color: "gray",italic: false},{text: "耐久力(物理)", color: "blue"}]'

#* 説明 (絶対に1行で！！！！)
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value \
'[{text: "緩衝体力0かつ被ダメージ時、確率で緩衝体力を得る",color: "gray",italic: false}]'


#* 通知
execute if score act.enc Temp matches 1.. at @s run function modify:enchantment/list/performance
