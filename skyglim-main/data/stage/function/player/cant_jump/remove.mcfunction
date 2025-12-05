##> stage:player/gimmick
##* 
##* ジャンプができるようにする
##* 
##* 

# tag を取ります
tag @s remove cant_jump

# attribute を戻す
attribute @s minecraft:jump_strength modifier remove minecraft:cant_jump
