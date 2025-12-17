###? 順番は、[DMG > HP > STR > CC > CD > DEF > SPD > MP > LUCK] の順番

# status/ref のどちらかが 1 以上なら付与する = 足して 1 以上なら実行する
execute store result score s.stat Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".status.luck
execute store result score s.ref Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.luck
scoreboard players operation s.stat Temp += s.ref Temp
execute unless score s.stat Temp matches 0 run function modify:refinement/list/status/luck

execute store result score s.stat Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".status.mp
execute store result score s.ref Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.mp
scoreboard players operation s.stat Temp += s.ref Temp
execute unless score s.stat Temp matches 0 run function modify:refinement/list/status/mp

execute store result score s.stat Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".status.spd
execute store result score s.ref Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.spd
scoreboard players operation s.stat Temp += s.ref Temp
execute unless score s.stat Temp matches 0 run function modify:refinement/list/status/spd

execute store result score s.stat Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".status.def
execute store result score s.ref Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.def
scoreboard players operation s.stat Temp += s.ref Temp
execute unless score s.stat Temp matches 0 run function modify:refinement/list/status/def

execute store result score s.stat Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".status.cd
execute store result score s.ref Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.cd
scoreboard players operation s.stat Temp += s.ref Temp
execute unless score s.stat Temp matches 0 run function modify:refinement/list/status/cd

execute store result score s.stat Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".status.cc
execute store result score s.ref Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.cc
scoreboard players operation s.stat Temp += s.ref Temp
execute unless score s.stat Temp matches 0 run function modify:refinement/list/status/cc

execute store result score s.stat Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".status.str
execute store result score s.ref Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.str
scoreboard players operation s.stat Temp += s.ref Temp
execute unless score s.stat Temp matches 0 run function modify:refinement/list/status/str

execute store result score s.stat Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".status.hp
execute store result score s.ref Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.hp
scoreboard players operation s.stat Temp += s.ref Temp
execute unless score s.stat Temp matches 0 run function modify:refinement/list/status/hp

execute store result score s.stat Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".status.damage
execute store result score s.ref Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.damage
scoreboard players operation s.stat Temp += s.ref Temp
execute unless score s.stat Temp matches 0 run function modify:refinement/list/status/dmg
