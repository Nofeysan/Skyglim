#> stage:tick
# 
# every tick
# 
# 

# enter 処理
execute as @a[scores={stage.enter=0..}] run function stage:enter/perform
