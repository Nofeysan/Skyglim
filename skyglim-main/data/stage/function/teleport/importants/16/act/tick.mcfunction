#> stage:teleport/importants/6/act/tick
# 
#\ -1 → 0 から実行
# 
# 

# tick score
    scoreboard players add $s16.boss.slain.perform _ 1

#! armorstarnd summon + aj tp & 仰向けにさせたい
    execute if score $s16.boss.slain.perform _ matches 0 run summon minecraft:armor_stand 9988 129 -267 {Invisible: true, NoGravity: true, Tags: ['s16.perform.base'], Small: true, Rotation: [-90, 0]}

# spectator
    execute if score $s16.boss.slain.perform _ matches 0..274 run gamemode spectator @a
    execute if score $s16.boss.slain.perform _ matches 0..274 as @a run spectate @n[tag=s16.perform.base] @s

# story
    execute if score $s16.boss.slain.perform _ matches 40 run function story:cecile/1-after/root {id: '1-after-1'}
    execute if score $s16.boss.slain.perform _ matches 120 run function story:cecile/1-after/root {id: '1-after-2'}
    execute if score $s16.boss.slain.perform _ matches 240 run function story:cecile/1-after/root {id: '1-after-3'}
    execute if score $s16.boss.slain.perform _ matches 360 run function story:cecile/1-after/root {id: '1-after-4'}
    execute if score $s16.boss.slain.perform _ matches 460 run function story:cecile/1-after/root {id: '1-after-5'}

# particle
    scoreboard players operation $per20 _ = $s16.boss.slain.perform _
    scoreboard players operation $per10 _ = $s16.boss.slain.perform _
    scoreboard players operation $per5 _ = $s16.boss.slain.perform _
    scoreboard players operation $per20 _ %= #20 num
    scoreboard players operation $per10 _ %= #10 num
    scoreboard players operation $per5 _ %= #5 num

    execute if score $per20 _ matches 0 if score $s16.boss.slain.perform _ matches 40..480 at @n[tag=aj.skyglim.cecile.root] positioned ~ ~0.5 ~ run particle minecraft:end_rod ~ ~ ~ 0.7 0.3 0.7 0.06 80 force
    execute if score $per10 _ matches 0 if score $s16.boss.slain.perform _ matches 240..480 at @n[tag=aj.skyglim.cecile.root] positioned ~ ~0.5 ~ run particle minecraft:firework ~ ~ ~ 0.7 0.3 0.7 0.06 80 force
    execute if score $per5 _ matches 0 if score $s16.boss.slain.perform _ matches 460..480 at @n[tag=aj.skyglim.cecile.root] positioned ~ ~0.5 ~ run particle minecraft:cloud ~ ~ ~ 0.7 0.3 0.7 0.06 80 force
    execute if score $s16.boss.slain.perform _ matches 480 at @n[tag=aj.skyglim.cecile.root] positioned ~ ~0.5 ~ run particle minecraft:dust{color: 5027246, scale: 2.4} ~ ~ ~ 0.7 0.3 0.7 0.06 360 force

# aj remove
    execute if score $s16.boss.slain.perform _ matches 480 run function aj:skyglim/cecile/remove/all


# 昼にしてアイテム出して終わり
    # night, item
        execute if score $s16.boss.slain.perform _ matches 480 run time set noon
        execute if score $s16.boss.slain.perform _ matches 480 run function stage:teleport/importants/6/act/summon_key


    # 520: 元に戻す


    # 大爆発 & 落下
        execute if score $s16.boss.slain.perform _ matches 275 run function stage:teleport/importants/6/act/fall
