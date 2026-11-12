#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

# forceload add
forceload add 10936 273 11108 414

# スポナー設置
function entity:spawner/set {id: 'stage/ex6/13', xyz: '10972 252 307', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex6/13', xyz: '10986 252 307', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex6/11', xyz: '10995 264 347', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex6/13', xyz: '10982 264 360', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex6/11', xyz: '11002 265 385', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex6/13', xyz: '11029 264 366', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex6/11', xyz: '11071 271 322', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex6/13', xyz: '11041 281 301', block: 'beacon'}
function entity:spawner/set {id: 'stage/ex6/13', xyz: '11024 288 304', block: 'beacon'}

function entity:spawner/set {id: 'stage/ex6/11', xyz: '11052 315 352', block: 'obsidian'}
function entity:spawner/set {id: 'stage/ex6/13', xyz: '11045 305 345', block: 'beacon'}
function entity:spawner/set {id: 'stage/ex6/13', xyz: '11061 305 360', block: 'obsidian'}

# チェスト配置
data modify block 11015 274 363 LootTable set value "entity:mob_drop/ex6/chest"
data modify block 11052 314 352 LootTable set value "entity:mob_drop/ex6/chest"

# ボス召喚設置
#setblock 10147 4 -340 minecraft:command_block{Command: "function stage:boss/10/summon"}
#setblock 10147 5 -340 minecraft:lapis_block
#setblock 10147 6 -340 minecraft:polished_blackstone_button[face=floor, facing=north]

# ボス部屋出口
#fill 10142 8 -350 10143 6 -350 minecraft:yellow_glazed_terracotta

# foeceload remove
forceload remove 10936 273 11108 414

# スコアの設定
scoreboard players set _ stage.ex.6 1

#! debug
#tellraw @a {text: '[!] Special VI を構成しました。', color: "gray"}
