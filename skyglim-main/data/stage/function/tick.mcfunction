#> stage:tick
# 
# every tick
# 
# 

# enter 処理
execute as @a[scores={stage.enter=0..}] run function stage:enter/perform

# s5-6 gate open 処理
execute if score $s6.gate.effect _ matches -1.. run function stage:teleport/importants/6/act/tick

# s16 boss slain 処理
execute if score $s16.boss.slain.perform _ matches -1.. run function stage:teleport/importants/16/act/tick

# normal ending
execute if score $normal_ending _ matches -1.. run function stage:teleport/importants/normal-ending/tick

# happy end 前会話
execute if score $last_talk _ matches -1.. run function story:avelian/14/root
execute if score $kalmia_last _ matches -1.. run function story:kalmia/root

# happy ending
execute if score $happy_ending _ matches -1.. run function stage:teleport/importants/happy-ending/tick

# boss
execute if entity @e[tag=boss] run function stage:boss/main
