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

# boss
execute if entity @e[tag=boss] run function stage:boss/main
