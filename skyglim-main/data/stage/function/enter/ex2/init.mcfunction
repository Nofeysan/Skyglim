#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

# forceload add
forceload add 9732 -202 9454 -256

# スポナー設置
function entity:spawner/set {id: 'stage/ex2/11', xyz: '9680 25 -224', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex2/12', xyz: '9672 25 -224', block: 'iron_block'}

function entity:spawner/set {id: 'stage/ex2/19', xyz: '9663 34 -207', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex2/19', xyz: '9646 34 -207', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex2/19', xyz: '9627 37 -207', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex2/19', xyz: '9639 34 -219', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex2/19', xyz: '9617 37 -219', block: 'beacon'}
function entity:spawner/set {id: 'stage/ex2/19', xyz: '9617 31 -239', block: 'beacon'}
function entity:spawner/set {id: 'stage/ex2/19', xyz: '9627 35 -252', block: 'obsidian'}
function entity:spawner/set {id: 'stage/ex2/19', xyz: '9640 37 -252', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex2/19', xyz: '9658 40 -252', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex2/19', xyz: '9663 40 -241', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex2/19', xyz: '9639 37 -232', block: 'obsidian'}
function entity:spawner/set {id: 'stage/ex2/19', xyz: '9652 37 -224', block: 'iron_block'}
function entity:spawner/set {id: 'stage/ex2/19', xyz: '9627 37 -232', block: 'iron_block'}

# チェスト配置
data modify block 9627 34 -252 LootTable set value "entity:mob_drop/ex2/chest"
data modify block 9675 25 -221 LootTable set value "entity:mob_drop/ex2/chest"

# ボス召喚設置
setblock 9467 34 -235 minecraft:command_block{Command: "function stage:boss/ex2/summon"}
setblock 9467 34 -235 minecraft:lapis_block
setblock 9467 34 -235 minecraft:polished_blackstone_button[face=floor, facing=north]

# ボス部屋出口
fill 9458 37 -234 9458 35 -236 minecraft:orange_concrete_powder

# foeceload remove
forceload remove 9732 -202 9454 -256

# スコアの設定
scoreboard players set _ stage.ex.2 1

#! debug
#tellraw @a {text: '[!] Special II を構成しました。', color: "gray"}
