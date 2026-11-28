#> stage:boss/6/move/2/root
# 
# スポナーからランダムに浮かせてAoE
# 
# 

# 各プレイヤーの場所に tnt
    execute if score exx BossMoves matches 200 at @a[distance=..80] run summon minecraft:item ~ ~1 ~ {Invulnerable: true, NoGravity: true, PickupDelay: -1, Item: {id: "minecraft:tnt", components: {"minecraft:enchantment_glint_override": true}}, Tags: ['gimmick', 'gimmick.tnt.exx'], Glowing: true}
    execute if score exx BossMoves matches 200 at @a[distance=..80] run particle minecraft:dust{color: 16113284, scale: 1.6} ~ ~1 ~ 0.3 0.3 0.3 0.1 120 force

    execute if score exx BossMoves matches 200 as @a[distance=..80] at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.6 0.5
    execute if score exx BossMoves matches 210 as @a[distance=..80] at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.6 0.5

    execute if score exx BossMoves matches 220 at @a[distance=..80] run summon minecraft:item ~ ~1 ~ {Invulnerable: true, NoGravity: true, PickupDelay: -1, Item: {id: "minecraft:tnt", components: {"minecraft:enchantment_glint_override": true}}, Tags: ['gimmick', 'gimmick.tnt.exx'], Glowing: true}
    execute if score exx BossMoves matches 220 at @a[distance=..80] run particle minecraft:dust{color: 16113284, scale: 1.6} ~ ~1 ~ 0.3 0.3 0.3 0.1 120 force
    execute if score exx BossMoves matches 220 as @a[distance=..80] at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.6 0.749154
    execute if score exx BossMoves matches 225 as @a[distance=..80] at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.6 0.749154
    execute if score exx BossMoves matches 230 as @a[distance=..80] at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.6 0.749154
    execute if score exx BossMoves matches 235 as @a[distance=..80] at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.6 0.749154

    execute if score exx BossMoves matches 240 as @a[distance=..80] at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.6 1.0
    execute if score exx BossMoves matches 245 as @a[distance=..80] at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.6 1.0
    execute if score exx BossMoves matches 250 as @a[distance=..80] at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.6 1.0
    execute if score exx BossMoves matches 255 as @a[distance=..80] at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.6 1.0

# 爆発
    execute if score exx BossMoves matches 260 as @a[distance=..80] at @s run playsound minecraft:entity.generic.explode voice @s ~ ~ ~ 0.6 0.8
    execute if score exx BossMoves matches 260 as @a[distance=..80] at @s run playsound minecraft:entity.generic.explode voice @s ~ ~ ~ 0.6 1.0
    execute if score exx BossMoves matches 260 as @a[distance=..80] at @s run playsound minecraft:entity.generic.explode voice @s ~ ~ ~ 0.6 1.5

    execute if score exx BossMoves matches 260 at @e[type=minecraft:item, tag=gimmick.tnt.exx] run particle minecraft:dust{color: 12460370, scale: 2.4} ~ ~ ~ 0.7 0.7 0.7 0.01 120
    execute if score exx BossMoves matches 260 at @e[type=minecraft:item, tag=gimmick.tnt.exx] run particle minecraft:dust{color: 15357190, scale: 2.4} ~ ~ ~ 0.7 0.7 0.7 0.01 120
    execute if score exx BossMoves matches 260 at @e[type=minecraft:item, tag=gimmick.tnt.exx] run particle minecraft:explosion ~ ~ ~ 0.7 0.7 0.7 0.1 20

    execute if score exx BossMoves matches 260 at @e[type=minecraft:item, tag=gimmick.tnt.exx] run effect give @a[distance=..5] minecraft:wind_charged 1 40

# reset
    execute if score exx BossMoves matches 260.. run kill @e[type=minecraft:item, tag=gimmick.tnt.exx]
    execute if score exx BossMoves matches 260.. run scoreboard players set exx BossMoves 140
