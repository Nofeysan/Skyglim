#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

# forceload add
forceload add 8111 -129 8032 -224
forceload add 8032 -544 8239 -305

# スポナー設置
function entity:spawner/set {id: 'stage/ex7/11', xyz: '9208 71 -336', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex7/11', xyz: '8210 72 -323', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex7/11', xyz: '8227 73 -331', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex7/11', xyz: '8231 73 -326', block: 'iron_block'}

function entity:spawner/set {id: 'stage/ex7/13', xyz: '8225 74 -411', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex7/14', xyz: '8225 73 -402', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex7/14', xyz: '8211 73 -402', block: 'beacon'}

function entity:spawner/set {id: 'stage/ex7/15', xyz: '8213 81 -462', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex7/16', xyz: '8220 76 -472', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex7/15', xyz: '8217 79 -486', block: 'obsidian'}
function entity:spawner/set {id: 'stage/ex7/16', xyz: '8208 78 -491', block: 'beacon'}

function entity:spawner/set {id: 'stage/ex7/17', xyz: '8165 72 -382', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex7/18', xyz: '8163 72 -393', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex7/17', xyz: '9150 72 -388', block: 'iron_block'}

function entity:spawner/set {id: 'stage/ex7/19', xyz: '8150 74 -441', block: 'beacon'}
function entity:spawner/set {id: 'stage/ex7/110', xyz: '8170 74 -459', block: 'obsidian'}
function entity:spawner/set {id: 'stage/ex7/19', xyz: '8148 74 -463', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex7/110', xyz: '8148 75 -463', block: 'iron_block'}

function entity:spawner/set {id: 'stage/ex7/111', xyz: '8158 89 -529', block: 'beacon'}
function entity:spawner/set {id: 'stage/ex7/112', xyz: '8158 97 -529', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex7/111', xyz: '8158 106 -529', block: 'obsidian'}
function entity:spawner/set {id: 'stage/ex7/112', xyz: '8158 113 -531', block: 'iron_block'}

# チェスト配置
data modify block 9236 79 -340 LootTable set value "entity:mob_drop/ex7/chest"
data modify block 8055 74 -378 LootTable set value "entity:mob_drop/ex7/chest"
data modify block 8158 105 -529 LootTable set value "entity:mob_drop/ex7/chest"

# ボス召喚設置
setblock 8093 76 -430 minecraft:command_block{Command: "function stage:boss/ex7/summon"}
setblock 8093 77 -430 minecraft:lapis_block
setblock 8093 78 -430 minecraft:polished_blackstone_button[face=floor, facing=north]

# ボス部屋出口
fill 8094 81 -416 8092 79 -416 minecraft:purpur_pillar

# foeceload remove
forceload remove 8111 -129 8032 -224
forceload remove 8032 -544 8239 -305

# スコアの設定
scoreboard players set _ stage.ex.7 1

#! debug
#tellraw @a {text: '[!] Special VII を構成しました。', color: "gray"}
