#> stage:enter/13/button/press
# 
# 
# 
# 

# score
    scoreboard players add $all s13.gimmick 1

# tell
    tellraw @a [{translate: 'stage.13.button.press', color: '#e9b530'}, {text: ' ['}, {score: {name: "$all", objective: "s13.gimmick"}}, {text: '/4]'}]

# button
    fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:air replace minecraft:polished_blackstone_button

# sound
    execute as @a at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2

# open
    execute if score $all s13.gimmick matches 4.. run function stage:enter/13/button/open
