###* roll なし

###* s.ref で場合分け, s.stat が <0 なら赤、=0 なら非表示、>0 なら青
###* s.ref > 0
$execute if score s.ref Temp matches 1.. if score s.stat Temp matches 1.. run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" insert 1 value [{text: "\uf102\uE006 ",color: "#ffffff",italic: false},{text: "魔力",color: "#9279d3"},{text: " \uE010 ",color: "gray"},{text: "+$(status)",color: "#55ff55"},{text: " (+$(ref))",color: "#325fce"}]
$execute if score s.ref Temp matches 1.. if score s.stat Temp matches 0 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" insert 1 value [{text: "\uf102\uE006 ",color: "#ffffff",italic: false},{text: "魔力",color: "#9279d3"},{text: " \uE010 ",color: "gray"},{text: "+$(status)",color: "gray"},{text: " (+$(ref))",color: "#325fce"}]
$execute if score s.ref Temp matches 1.. if score s.stat Temp matches ..-1 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" insert 1 value [{text: "\uf102\uE006 ",color: "#ffffff",italic: false},{text: "魔力",color: "#9279d3"},{text: " \uE010 ",color: "gray"},{text: "$(status)",color: "#d94262"},{text: " (+$(ref))",color: "#325fce"}]

###* s.ref = 0
$execute if score s.ref Temp matches 0 if score s.stat Temp matches 1.. run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" insert 1 value [{text: "\uf102\uE006 ",color: "#ffffff",italic: false},{text: "魔力",color: "#9279d3"},{text: " \uE010 ",color: "gray"},{text: "+$(status)",color: "#55ff55"}]
$execute if score s.ref Temp matches 0 if score s.stat Temp matches 0 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" insert 1 value [{text: "\uf102\uE006 ",color: "#ffffff",italic: false},{text: "魔力",color: "#9279d3"},{text: " \uE010 ",color: "gray"},{text: "+$(status)",color: "gray"}]
$execute if score s.ref Temp matches 0 if score s.stat Temp matches ..-1 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" insert 1 value [{text: "\uf102\uE006 ",color: "#ffffff",italic: false},{text: "魔力",color: "#9279d3"},{text: " \uE010 ",color: "gray"},{text: "$(status)",color: "#d94262"}]

###* s.ref < 0
$execute if score s.ref Temp matches ..-1 if score s.stat Temp matches 1.. run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" insert 1 value [{text: "\uf102\uE006 ",color: "#ffffff",italic: false},{text: "魔力",color: "#9279d3"},{text: " \uE010 ",color: "gray"},{text: "+$(status)",color: "#55ff55"},{text: " ($(ref))",color: "#d94262"}]
$execute if score s.ref Temp matches ..-1 if score s.stat Temp matches 0 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" insert 1 value [{text: "\uf102\uE006 ",color: "#ffffff",italic: false},{text: "魔力",color: "#9279d3"},{text: " \uE010 ",color: "gray"},{text: "+$(status)",color: "gray"},{text: " ($(ref))",color: "#d94262"}]
$execute if score s.ref Temp matches ..-1 if score s.stat Temp matches ..-1 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" insert 1 value [{text: "\uf102\uE006 ",color: "#ffffff",italic: false},{text: "魔力",color: "#9279d3"},{text: " \uE010 ",color: "gray"},{text: "$(status)",color: "#d94262"},{text: " ($(ref))",color: "#d94262"}]
