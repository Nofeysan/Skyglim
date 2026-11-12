#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

# forceload add
forceload add 10064 -463 10222 -354

# スポナー設置
function entity:spawner/set {id: 'stage/ex4/11', xyz: '10098 15 -408', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex4/12', xyz: '10112 17 -406', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex4/13', xyz: '10121 18 -393', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex4/14', xyz: '10134 19 -382', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex4/11', xyz: '10151 23 -383', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex4/13', xyz: '10162 27 -390', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex4/14', xyz: '10180 32 -398', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex4/19', xyz: '10194 36 -412', block: 'beacon'}
function entity:spawner/set {id: 'stage/ex4/19', xyz: '10199 36 -408', block: 'beacon'}
function entity:spawner/set {id: 'stage/ex4/19', xyz: '10204 39 -432', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex4/19', xyz: '10211 39 -443', block: 'obsidian'}
function entity:spawner/set {id: 'stage/ex4/19', xyz: '10201 39 -448', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex4/19', xyz: '10204 46 -440', block: 'obsidian'}
function entity:spawner/set {id: 'stage/ex4/19', xyz: '10204 52 -440', block: 'bedrock'}

fill 10203 54 -447 10205 52 -447 minecraft:iron_block

# チェスト配置
data modify block 10211 39 -443 LootTable set value "entity:mob_drop/ex4/chest"

# ボス召喚設置
#setblock 10147 4 -340 minecraft:command_block{Command: "function stage:boss/10/summon"}
#setblock 10147 5 -340 minecraft:lapis_block
#setblock 10147 6 -340 minecraft:polished_blackstone_button[face=floor, facing=north]

# ボス部屋出口
#fill 10142 8 -350 10143 6 -350 minecraft:yellow_glazed_terracotta

# foeceload remove
forceload remove 10064 -463 10222 -354

# スコアの設定
scoreboard players set _ stage.ex.4 1

#! debug
#tellraw @a {text: '[!] Special IV を構成しました。', color: "gray"}
