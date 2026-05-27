###* 最終行に追加していく
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value \
[{text: "◆ ",color: "#e2c1cf", italic: false},\
{text: "R",color: "#e6cbe3"},\
{text: "e",color: "#e6cfe9"},\
{text: "f",color: "#e5d2f0"},\
{text: "i",color: "#e3d5f6"},\
{text: "n",color: "#e1d8fb"},\
{text: "e",color: "#dedbff"},\
{text: "m",color: "#dadeff"},\
{text: "e",color: "#d6e1ff"},\
{text: "n",color: "#d2e4ff"},\
{text: "t",color: "#cde6ff"},\
{text: " \uE010 ",color: "gray"},\
{text: "Power",color: "#ea5506"}]

###* あとtellraw
execute if score act.ref Temp matches 1.. run tellraw @s \
[{text: "\uE010 ",color: "gray"},{text: "Power",color: "#ea5506"},{text: " の Refinement を付与しました！",color: "#fff6fe"}]
