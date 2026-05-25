#> stage:player/return/every
# 
# 毎ティック実行
# 
# 

# increment
scoreboard players add @s ReturnPearl 1

# effect
effect give @s minecraft:slowness 1 5 true
effect give @s minecraft:glowing 1 0 true

# sound
scoreboard players operation _ _ = @s ReturnPearl
scoreboard players operation _ _ %= #20 num
execute if score _ _ matches 1 at @s run playsound minecraft:block.note_block.hat voice @s ~ ~ ~ 1 1

# title
title @s title ""
title @s times 0 20 10
execute if entity @s[scores={ReturnPearl=  1..10 }] run title @s subtitle [{text: "", color: "white"}, {translate: "stage.return.tick", color: "#e9b530"}, {text: "[ "},{text: "■", color: "dark_aqua"},{text: "■■■■■■■■■■■■■", color: "gray"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl= 11..20 }] run title @s subtitle [{text: "", color: "white"}, {translate: "stage.return.tick", color: "#e9b530"}, {text: "[ "},{text: "■■", color: "dark_aqua"},{text: "■■■■■■■■■■■■", color: "gray"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl= 21..30 }] run title @s subtitle [{text: "", color: "white"}, {translate: "stage.return.tick", color: "#e9b530"}, {text: "[ "},{text: "■■■", color: "dark_aqua"},{text: "■■■■■■■■■■■", color: "gray"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl= 31..40 }] run title @s subtitle [{text: "", color: "white"}, {translate: "stage.return.tick", color: "#e9b530"}, {text: "[ "},{text: "■■■■", color: "dark_aqua"},{text: "■■■■■■■■■■", color: "gray"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl= 41..50 }] run title @s subtitle [{text: "", color: "white"}, {translate: "stage.return.tick", color: "#e9b530"}, {text: "[ "},{text: "■■■■■", color: "dark_aqua"},{text: "■■■■■■■■■", color: "gray"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl= 51..60 }] run title @s subtitle [{text: "", color: "white"}, {translate: "stage.return.tick", color: "#e9b530"}, {text: "[ "},{text: "■■■■■■", color: "dark_aqua"},{text: "■■■■■■■■", color: "gray"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl= 61..70 }] run title @s subtitle [{text: "", color: "white"}, {translate: "stage.return.tick", color: "#e9b530"}, {text: "[ "},{text: "■■■■■■■", color: "dark_aqua"},{text: "■■■■■■■", color: "gray"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl= 71..80 }] run title @s subtitle [{text: "", color: "white"}, {translate: "stage.return.tick", color: "#e9b530"}, {text: "[ "},{text: "■■■■■■■■", color: "dark_aqua"},{text: "■■■■■■", color: "gray"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl= 81..90 }] run title @s subtitle [{text: "", color: "white"}, {translate: "stage.return.tick", color: "#e9b530"}, {text: "[ "},{text: "■■■■■■■■■", color: "dark_aqua"},{text: "■■■■■", color: "gray"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl= 91..100}] run title @s subtitle [{text: "", color: "white"}, {translate: "stage.return.tick", color: "#e9b530"}, {text: "[ "},{text: "■■■■■■■■■■", color: "dark_aqua"},{text: "■■■■", color: "gray"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl=101..110}] run title @s subtitle [{text: "", color: "white"}, {translate: "stage.return.tick", color: "#e9b530"}, {text: "[ "},{text: "■■■■■■■■■■■", color: "dark_aqua"},{text: "■■■", color: "gray"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl=111..120}] run title @s subtitle [{text: "", color: "white"}, {translate: "stage.return.tick", color: "#e9b530"}, {text: "[ "},{text: "■■■■■■■■■■■■", color: "dark_aqua"},{text: "■■", color: "gray"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl=121..130}] run title @s subtitle [{text: "", color: "white"}, {translate: "stage.return.tick", color: "#e9b530"}, {text: "[ "},{text: "■■■■■■■■■■■■■", color: "dark_aqua"},{text: "■", color: "gray"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl=131..140}] run title @s subtitle [{text: "", color: "white"}, {translate: "stage.return.tick", color: "#e9b530"}, {text: "[ "},{text: "■■■■■■■■■■■■■■", color: "dark_aqua"},{text: "", color: "gray"},{text: " ]"}]

# tp
execute if entity @s[scores={ReturnPearl=141..}] run function stage:player/return/tp
