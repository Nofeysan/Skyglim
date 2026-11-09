#> magic:act/401002
# id: 401002
# MP: 2
# name: アイテム収集
# 

###? MP 減らす
scoreboard players operation @s[tag=!failed] CurrentMP -= req_mp _

###? 実行部分
# lv. ある？
execute store result score _ _ run experience query @s levels
execute unless score _ _ matches 5.. run return run function magic:check/fail-noexp

experience add @s -5 levels

# 演出
playsound minecraft:block.note_block.xylophone voice @a ~ ~ ~ 0.7 1
particle minecraft:crit ~ ~1 ~ 0.7 1 0.7 0 120

# cur
execute if score $stage_progress story.progress matches 1 at @s run function item:currency/summon {pos: "~ ~ ~", l:  4, lb: 0, el: 0, elb: 0}
execute if score $stage_progress story.progress matches 2 at @s run function item:currency/summon {pos: "~ ~ ~", l: 32, lb: 0, el: 0, elb: 0}
execute if score $stage_progress story.progress matches 3 at @s run function item:currency/summon {pos: "~ ~ ~", l:  0, lb: 1, el: 0, elb: 0}
execute if score $stage_progress story.progress matches 4 at @s run function item:currency/summon {pos: "~ ~ ~", l:  0, lb: 2, el: 0, elb: 0}
execute if score $stage_progress story.progress matches 5 at @s run function item:currency/summon {pos: "~ ~ ~", l:  0, lb: 4, el: 0, elb: 0}
