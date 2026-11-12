#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

# forceload add
forceload add 6864 -144 6959 -81

# スポナー設置
function entity:spawner/set {id: 'stage/ex8/11', xyz: '6944 50 -92', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex8/11', xyz: '6937 50 -107', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex8/11', xyz: '6922 50 -107', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex8/11', xyz: '6896 49 -107', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex8/11', xyz: '6898 50 -124', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex8/11', xyz: '6882 49 -135', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex8/11', xyz: '6882 50 -135', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex8/11', xyz: '6881 65 -135', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex8/11', xyz: '6885 65 -135', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex8/11', xyz: '6887 78 -135', block: 'iron_block'}

# チェスト配置
data modify block 6891 50 -109 LootTable set value "entity:mob_drop/ex8/chest"

# ボス召喚設置
#setblock 10147 4 -340 minecraft:command_block{Command: "function stage:boss/10/summon"}
#setblock 10147 5 -340 minecraft:lapis_block
#setblock 10147 6 -340 minecraft:polished_blackstone_button[face=floor, facing=north]

# ボス部屋出口
#fill 10142 8 -350 10143 6 -350 minecraft:yellow_glazed_terracotta

# foeceload remove
forceload remove 6864 -144 6959 -81

# スコアの設定
scoreboard players set _ stage.ex.8 1

#! debug
#tellraw @a {text: '[!] Special VIII を構成しました。', color: "gray"}
