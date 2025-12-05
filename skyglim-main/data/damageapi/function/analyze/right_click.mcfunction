###* custom_data で検知してみようね
# analyze / {analyze: 1b}
execute if predicate damageapi:has_analyze at @s run function damageapi:analyze/act/root




###* リセット
scoreboard players reset @s UseMagic
