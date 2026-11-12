#> damageapi:calc_damage/enemy/aoe/root
# 
# tags; ['leave.aoe', 'leave.aoe.']
# 
# 

# ex1-3
    execute if entity @s[tag=leave.aoe.ex1.3] run function entity:aec_manager/summon/.cyl {r: 13, t: 60, dmg: 72, str: 51, id: 213}

# ex2-3
    execute if entity @s[tag=leave.aoe.ex2.3] run function entity:aec_manager/summon/.square {r: 13, t: 60, dmg: 79, str: 61, id: 223}

# ex4-4
    execute if entity @s[tag=leave.aoe.ex4.4] run function entity:aec_manager/summon/.cyl {r: 17, t: 60, dmg: 79, str: 61, id: 244}

# ex7-5
    execute if entity @s[tag=leave.aoe.ex7.5] run function entity:aec_manager/summon/.cyl {r: 17, t: 60, dmg: 118, str: 110, id: 275}

# ex7-10
    execute if entity @s[tag=leave.aoe.ex7.10] run function entity:aec_manager/summon/.cyl {r: 17, t: 60, dmg: 132, str: 124, id: 279}
