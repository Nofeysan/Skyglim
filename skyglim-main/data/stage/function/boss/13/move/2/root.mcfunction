#> stage:boss/6/move/2/root
# 
# スポナーからランダムに浮かせてAoE
# 
# 

# 各プレイヤーの場所に tnt
    execute if score s13 BossMoves matches 200 at @a[distance=..80] run summon minecraft:item ~ ~1 ~ {Invulnerable: true, NoGravity: true, PickupDelay: -1, Item: {id: "minecraft:tnt", components: {"minecraft:enchantment_glint_override": true}}, Tags: ['gimmick', 'gimmick.tnt.s13'], Glowing: true}

    execute if score s13 BossMoves matches 200 as @a[distance=..80] at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.6 0.5
    execute if score s13 BossMoves matches 210 as @a[distance=..80] at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.6 0.5

    execute if score s13 BossMoves matches 220 as @a[distance=..80] at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.6 0.749154
    execute if score s13 BossMoves matches 225 as @a[distance=..80] at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.6 0.749154
    execute if score s13 BossMoves matches 230 as @a[distance=..80] at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.6 0.749154
    execute if score s13 BossMoves matches 235 as @a[distance=..80] at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.6 0.749154

    execute if score s13 BossMoves matches 240 as @a[distance=..80] at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.6 1.0
    execute if score s13 BossMoves matches 245 as @a[distance=..80] at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.6 1.0
    execute if score s13 BossMoves matches 250 as @a[distance=..80] at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.6 1.0
    execute if score s13 BossMoves matches 255 as @a[distance=..80] at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.6 1.0

# 爆発
    execute if score s13 BossMoves matches 260 as @a[distance=..80] at @s run playsound minecraft:entity.generic.explode voice @s ~ ~ ~ 0.6 0.8
    execute if score s13 BossMoves matches 260 as @a[distance=..80] at @s run playsound minecraft:entity.generic.explode voice @s ~ ~ ~ 0.6 1.0
    execute if score s13 BossMoves matches 260 as @a[distance=..80] at @s run playsound minecraft:entity.generic.explode voice @s ~ ~ ~ 0.6 1.5

    execute if score s13 BossMoves matches 260 at @e[type=minecraft:item, tag=gimmick.tnt.s13] run particle minecraft:dust{color: 12460370, scale: 2.4} ~ ~ ~ 0.7 0.7 0.7 0.01 120
    execute if score s13 BossMoves matches 260 at @e[type=minecraft:item, tag=gimmick.tnt.s13] run particle minecraft:dust{color: 15357190, scale: 2.4} ~ ~ ~ 0.7 0.7 0.7 0.01 120
    execute if score s13 BossMoves matches 260 at @e[type=minecraft:item, tag=gimmick.tnt.s13] run particle minecraft:explosion ~ ~ ~ 0.7 0.7 0.7 0.1 20

    execute if score s13 BossMoves matches 260 at @e[type=minecraft:item, tag=gimmick.tnt.s13] unless score $s13.boss.half _ matches 1 run effect give @a[distance=..5] minecraft:wind_charged 1 28
    execute if score s13 BossMoves matches 260 at @e[type=minecraft:item, tag=gimmick.tnt.s13] if score $s13.boss.half _ matches 1 run effect give @a[distance=..5] minecraft:wind_charged 1 56

# reset
    execute if score s13 BossMoves matches 260.. run kill @e[type=minecraft:item, tag=gimmick.tnt.s13]
    execute if score s13 BossMoves matches 260.. run scoreboard players set s13 BossMoves 100
