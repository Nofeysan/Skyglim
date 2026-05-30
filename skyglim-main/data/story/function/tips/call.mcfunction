#> story:tips/call
# 
# Tips を出したいときはこれを出せば OK
# 
# 

# random
execute store result storage temp: random.id int 1 run random value 0..29

# macro
function story:tips/tips_macro with storage temp: random
