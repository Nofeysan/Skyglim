# まず名前部分
$execute if score @s occupation matches 0 run scoreboard players display name $(uuid) Level [{"text": "[§b$(level)§r] $(name)"}]
$execute if score @s occupation matches 1 run scoreboard players display name $(uuid) Level [{"text": "[§b$(level)§r] §1∮§r $(name)"}]
$execute if score @s occupation matches 2 run scoreboard players display name $(uuid) Level [{"text": "[§b$(level)§r] §c⚔§r $(name)"}]
$execute if score @s occupation matches 3 run scoreboard players display name $(uuid) Level [{"text": "[§b$(level)§r] §2∑§r $(name)"}]
$execute if score @s occupation matches 4 run scoreboard players display name $(uuid) Level [{"text": "[§b$(level)§r] §5∂§r $(name)"}]
$execute if score @s occupation matches 5 run scoreboard players display name $(uuid) Level [{"text": "[§b$(level)§r] §b☆§r $(name)"}]

# 数字部分は共通で行けるのらくじゃない？
$scoreboard players display numberformat $(uuid) Level fixed {"text": "($(int).$(float)%)","color": "#92f3a4"}
