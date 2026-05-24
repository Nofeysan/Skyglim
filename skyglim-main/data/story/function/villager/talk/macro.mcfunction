#> story:villager/talk/macro
# 
# macro でランダムな話をする
# 
# @input
# storage
#   temp: 
#       talk.id [int]: random value
#            name [str]: 村人の名前

$function story:villager/talk/$(name)/$(id)
