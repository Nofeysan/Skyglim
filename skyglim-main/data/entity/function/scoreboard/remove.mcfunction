###* 実行するだけで消去できる便利な代物
data modify storage status: player.uuid set from entity @s UUID[0]
function entity:scoreboard/macro/remove with storage status: player


