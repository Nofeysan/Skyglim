#> stage:teleport/importants/6/act/tick
# 
#\ -1 → 0 から実行
# 
# 

# tick score
    scoreboard players add $s6.gate.effect _ 1

# armorstarnd summon
    execute if score $s6.gate.effect _ matches 0 run summon minecraft:armor_stand 9988 129 -267 {Invisible: true, NoGravity: true, Tags: ['s6.gate.base'], Small: true, Rotation: [-90, 0]}

# spectator
    execute if score $s6.gate.effect _ matches 0..274 run gamemode spectator @a
    execute if score $s6.gate.effect _ matches 0..274 as @a run spectate @n[tag=s6.gate.base] @s

# night
    execute if score $s6.gate.effect _ matches 10 run time set midnight

# effect
    # 20: item summon
        execute if score $s6.gate.effect _ matches 20 run function stage:teleport/importants/6/act/summon_key

    # 60: 1
        execute if score $s6.gate.effect _ matches 60 run particle minecraft:dust{color: [0.749019607843137, 0.894117647058824, 0.576470588235294], scale: 1.2} 9991 129.5 -267 0.5 0.5 0.5 0.1 120
        execute if score $s6.gate.effect _ matches 60 run playsound minecraft:block.note_block.chime voice @a 9991 129.5 -267 1.2 1.0

    # 80: 2
        execute if score $s6.gate.effect _ matches 80 run particle minecraft:dust{color: [0.913725490196078, 0.709803921568628, 0.188235294117647], scale: 1.4} 9991 129.5 -267 0.7 0.7 0.7 0.1 180
        execute if score $s6.gate.effect _ matches 80 run playsound minecraft:block.note_block.chime voice @a 9991 129.5 -267 1.3 1.52

    # 100: 3
        execute if score $s6.gate.effect _ matches 100 run particle minecraft:dust{color: [0.745098039215686, 0.129411764705882, 0.32156862745098], scale: 1.6} 9991 129.5 -267 0.7 0.7 0.7 0.1 240
        execute if score $s6.gate.effect _ matches 100 run playsound minecraft:block.note_block.chime voice @a 9991 129.5 -267 1.6 2.0

    # 160~: error
    # gate replace
        execute if score $s6.gate.effect _ matches 160 run function stage:teleport/importants/6/act/replace {x: 9992, y: 128, z: -269, p: 1.83}
        execute if score $s6.gate.effect _ matches 173 run function stage:teleport/importants/6/act/replace {x: 9992, y: 130, z: -265, p: 0.62}
        execute if score $s6.gate.effect _ matches 184 run function stage:teleport/importants/6/act/replace {x: 9992, y: 131, z: -268, p: 1.47}
        execute if score $s6.gate.effect _ matches 193 run function stage:teleport/importants/6/act/replace {x: 9992, y: 127, z: -266, p: 0.95}
        execute if score $s6.gate.effect _ matches 201 run function stage:teleport/importants/6/act/replace {x: 9992, y: 127, z: -265, p: 1.12}
        execute if score $s6.gate.effect _ matches 208 run function stage:teleport/importants/6/act/replace {x: 9990, y: 127, z: -270, p: 1.74}
        execute if score $s6.gate.effect _ matches 214 run function stage:teleport/importants/6/act/replace {x: 9990, y: 126, z: -264, p: 0.53}
        execute if score $s6.gate.effect _ matches 219 run function stage:teleport/importants/6/act/replace {x: 9992, y: 132, z: -269, p: 1.38}
        execute if score $s6.gate.effect _ matches 223 run function stage:teleport/importants/6/act/replace {x: 9991, y: 132, z: -265, p: 0.81}
        execute if score $s6.gate.effect _ matches 226 run function stage:teleport/importants/6/act/replace {x: 9992, y: 129, z: -271, p: 1.96}
        execute if score $s6.gate.effect _ matches 228 run function stage:teleport/importants/6/act/replace {x: 9992, y: 127, z: -270, p: 1.25}
        execute if score $s6.gate.effect _ matches 230 run function stage:teleport/importants/6/act/replace {x: 9992, y: 132, z: -266, p: 0.70}
        execute if score $s6.gate.effect _ matches 231 run function stage:teleport/importants/6/act/replace {x: 9992, y: 129, z: -267, p: 1.59}
        execute if score $s6.gate.effect _ matches 232 run function stage:teleport/importants/6/act/replace {x: 9992, y: 127, z: -269, p: 1.04}
        execute if score $s6.gate.effect _ matches 233 run function stage:teleport/importants/6/act/replace {x: 9990, y: 133, z: -269, p: 1.60}
        execute if score $s6.gate.effect _ matches 234 run function stage:teleport/importants/6/act/replace {x: 9991, y: 130, z: -263, p: 0.88}

    # explode
        execute if score $s6.gate.effect _ matches 188 run function stage:teleport/importants/6/act/explode {x: 9991, y: 129, z: -269, p: 1.73}
        execute if score $s6.gate.effect _ matches 197 run function stage:teleport/importants/6/act/explode {x: 9990, y: 132, z: -265, p: 0.89}
        execute if score $s6.gate.effect _ matches 205 run function stage:teleport/importants/6/act/explode {x: 9987, y: 127, z: -265, p: 1.45}
        execute if score $s6.gate.effect _ matches 212 run function stage:teleport/importants/6/act/explode {x: 9986, y: 130, z: -270, p: 1.18}
        execute if score $s6.gate.effect _ matches 217 run function stage:teleport/importants/6/act/explode {x: 9985, y: 128, z: -268, p: 1.94}
        execute if score $s6.gate.effect _ matches 221 run function stage:teleport/importants/6/act/explode {x: 9987, y: 127, z: -265, p: 0.83}
        execute if score $s6.gate.effect _ matches 224 run function stage:teleport/importants/6/act/explode {x: 9991, y: 130, z: -267, p: 1.61}
        execute if score $s6.gate.effect _ matches 227 run function stage:teleport/importants/6/act/explode {x: 9991, y: 127, z: -266, p: 1.32}
        execute if score $s6.gate.effect _ matches 230 run function stage:teleport/importants/6/act/explode {x: 9991, y: 131, z: -269, p: 1.05}
        execute if score $s6.gate.effect _ matches 233 run function stage:teleport/importants/6/act/explode {x: 9989, y: 127, z: -267, p: 1.87}

    # 大爆発 & 落下
        execute if score $s6.gate.effect _ matches 275 run function stage:teleport/importants/6/act/fall
