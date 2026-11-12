#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

# forceload add
forceload add 9824 158 9915 313

# スポナー設置
function entity:spawner/set {id: 'stage/ex1/11', xyz: '9847 72 176', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex1/12', xyz: '9870 72 184', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex1/11', xyz: '9842 72 194', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex1/11', xyz: '9858 70 203', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex1/13', xyz: '9852 70 203', block: 'iron_block'}

function entity:spawner/set {id: 'stage/ex1/19', xyz: '9877 85 231', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9831 89 231', block: 'beacon'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9833 80 258', block: 'obsidian'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9856 85 253', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9854 85 253', block: 'iron_block'}

function entity:spawner/set {id: 'stage/ex1/19', xyz: '9878 80 255', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9877 79 252', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9880 79 275', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9874 79 275', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9899 84 275', block: 'beacon'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9899 87 254', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9901 86 249', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9877 94 254', block: 'obsidian'}

function entity:spawner/set {id: 'stage/ex1/19', xyz: '9881 96 272', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9874 92 277', block: 'iron_block'}

function entity:spawner/set {id: 'stage/ex1/19', xyz: '9855 74 312', block: 'obsidian'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9855 73 302', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9855 74 302', block: 'beacon'}

function entity:spawner/set {id: 'stage/ex1/19', xyz: '9833 86 275', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9833 95 251', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9861 95 274', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9858 96 279', block: 'beacon'}

function entity:spawner/set {id: 'stage/ex1/19', xyz: '9853 99 256', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9861 101 246', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9860 103 186', block: 'beacon'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9850 103 186', block: 'beacon'}
function entity:spawner/set {id: 'stage/ex1/19', xyz: '9857 99 195', block: 'iron_block'}

# チェスト配置
data modify block 9855 73 312 LootTable set value "entity:mob_drop/ex1/chest"
data modify block 9833 79 258 LootTable set value "entity:mob_drop/ex1/chest"

# ボス召喚設置
#setblock 10147 4 -340 minecraft:command_block{Command: "function stage:boss/10/summon"}
#setblock 10147 5 -340 minecraft:lapis_block
#setblock 10147 6 -340 minecraft:polished_blackstone_button[face=floor, facing=north]

# ボス部屋出口
#fill 10142 8 -350 10143 6 -350 minecraft:yellow_glazed_terracotta

# foeceload remove
forceload remove 9824 158 9915 313

# スコアの設定
scoreboard players set _ stage.ex.1 1

#! debug
#tellraw @a {text: '[!] Stage 10 を構成しました。', color: "gray"}
