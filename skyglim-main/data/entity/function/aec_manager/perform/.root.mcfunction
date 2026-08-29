#> entity:aec_manager/perform/.root
# 
# 演出を実行するマクロ用 function
# 
# @input
#   storage temp: aec.id
#       演出を指定する id
# 

# macro で実行
$execute positioned ~ ~ ~ run function entity:aec_manager/perform/$(id)
