scoreboard players operation vamp Temp = DealtDamage Temp
scoreboard players operation vamp Temp /= #100 num
scoreboard players operation vamp Temp /= #2 num
scoreboard players operation @s CurrentHealth += vamp Temp

#tellraw @s [{text: "\uE010 +",color: "#aaaaaa"},{"score": {"name": "vamp","objective": "Temp"}},{text: "HP"}]
