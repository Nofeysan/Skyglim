#> stage:boss/6/move/2/root
# 
# 反↓復→横→跳↑び↓
# 
# 

# AoE to AEC
    execute at @a positioned ~ 82 ~ run function entity:aec_manager/summon/.cyl {r: 13, t: 40, dmg: 16, str: 18, id: 142}
    function entity:aec_manager/summon/.cyl {r: 13, t: 40, dmg: 16, str: 18, id: 142}

# reset
    scoreboard players set s14 BossMoves 100
