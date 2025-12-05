# storage をなくしましょう
data modify storage enemy: temp.uuid set from entity @s UUID[0]
function magic:macro/remove_storage with storage enemy: temp

# 自分をkill
kill @s
