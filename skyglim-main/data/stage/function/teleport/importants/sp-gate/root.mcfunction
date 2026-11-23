#> stage:teleport/importants/sp-gate/root
# 
# 
# 
# 

# 座標チェック
    execute unless score $sp.gate.open.white _ matches 1 positioned 9890 43 50 if entity @s[distance=..4] run return run function stage:teleport/importants/sp-gate/gate/white
    execute unless score $sp.gate.open.yellow _ matches 1 positioned 9942 103 -35 if entity @s[distance=..4] run return run function stage:teleport/importants/sp-gate/gate/yellow
    execute unless score $sp.gate.open.green _ matches 1 positioned 9904 123 -207 if entity @s[distance=..4] run return run function stage:teleport/importants/sp-gate/gate/green
    execute unless score $sp.gate.open.light_blue _ matches 1 positioned 10027 13 -335 if entity @s[distance=..4] run return run function stage:teleport/importants/sp-gate/gate/light_blue
    execute unless score $sp.gate.open.cyan _ matches 1 positioned 10057 61 -60 if entity @s[distance=..4] run return run function stage:teleport/importants/sp-gate/gate/cyan
    execute unless score $sp.gate.open.pink _ matches 1 positioned 10793 185 77 if entity @s[distance=..4] run return run function stage:teleport/importants/sp-gate/gate/pink
    execute unless score $sp.gate.open.magenta _ matches 1 positioned 8034 75 -124 if entity @s[distance=..4] run return run function stage:teleport/importants/sp-gate/gate/magenta
    execute unless score $sp.gate.open.black _ matches 1 positioned 6983 56 -17 if entity @s[distance=..4] run return run function stage:teleport/importants/sp-gate/gate/magenta

# どれにも合致しなければ fail
    function stage:teleport/importants/sp-gate/fail
