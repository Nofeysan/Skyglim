#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

# forceload add
forceload add 6923 23 6737 -37

# スポナー設置
function entity:spawner/set {id: 'stage/15/19', xyz: '6885 71 -9', block: 'iron_block'}
function entity:spawner/set {id: 'stage/15/19', xyz: '6868 71 -9', block: 'beacon'}
function entity:spawner/set {id: 'stage/15/19', xyz: '6852 72 -9', block: 'iron_block'}

function entity:spawner/set {id: 'stage/15/12', xyz: '6893 71 14', block: 'iron_block'}
function entity:spawner/set {id: 'stage/15/13', xyz: '6877 71 14', block: 'iron_block'}
function entity:spawner/set {id: 'stage/15/11', xyz: '6893 76 14', block: 'beacon'}
function entity:spawner/set {id: 'stage/15/14', xyz: '6877 76 14', block: 'iron_block'}

function entity:spawner/set {id: 'stage/15/13', xyz: '6893 71 -32', block: 'iron_block'}
function entity:spawner/set {id: 'stage/15/12', xyz: '6877 71 -32', block: 'iron_block'}
function entity:spawner/set {id: 'stage/15/14', xyz: '6893 76 -32', block: 'beacon'}
function entity:spawner/set {id: 'stage/15/11', xyz: '6877 76 -32', block: 'iron_block'}

function entity:spawner/set {id: 'stage/15/19', xyz: '6838 75 14', block: 'iron_block'}
function entity:spawner/set {id: 'stage/15/19', xyz: '6838 76 1', block: 'iron_block'}
function entity:spawner/set {id: 'stage/15/19', xyz: '6838 76 -19', block: 'iron_block'}
function entity:spawner/set {id: 'stage/15/19', xyz: '6838 75 -32', block: 'iron_block'}

function entity:spawner/set {id: 'stage/15/12', xyz: '6849 76 -9', block: 'iron_block'}
function entity:spawner/set {id: 'stage/15/14', xyz: '6842 81 -8', block: 'iron_block'}
function entity:spawner/set {id: 'stage/15/11', xyz: '6833 81 10', block: 'beacon'}
function entity:spawner/set {id: 'stage/15/19', xyz: '6831 85 -6', block: 'iron_block'}
function entity:spawner/set {id: 'stage/15/19', xyz: '6831 85 -22', block: 'iron_block'}
function entity:spawner/set {id: 'stage/15/19', xyz: '6836 85 -36', block: 'iron_block'}

function entity:spawner/set {id: 'stage/15/19', xyz: '6847 82 -29', block: 'iron_block'}
function entity:spawner/set {id: 'stage/15/12', xyz: '6874 82 14', block: 'iron_block'}
function entity:spawner/set {id: 'stage/15/14', xyz: '6873 82 -30', block: 'iron_block'}

function entity:spawner/set {id: 'stage/15/19', xyz: '6886 81 -11', block: 'iron_block'}
function entity:spawner/set {id: 'stage/15/19', xyz: '6886 82 -11', block: 'iron_block'}
function entity:spawner/set {id: 'stage/15/19', xyz: '6885 81 14', block: 'iron_block'}
function entity:spawner/set {id: 'stage/15/19', xyz: '6885 82 14', block: 'iron_block'}

# チェスト配置
data modify block 6852 71 -9 LootTable set value "entity:mob_drop/15/chest"
data modify block 6902 76 -35 LootTable set value "entity:mob_drop/15/chest"
data modify block 6902 76 17 LootTable set value "entity:mob_drop/15/chest"
data modify block 6831 85 18 LootTable set value "entity:mob_drop/15/chest"
data modify block 6874 81 14 LootTable set value "entity:mob_drop/15/chest"

# ボス召喚設置
setblock 6765 73 -10 minecraft:command_block{Command: "function stage:boss/15/summon"}
setblock 6765 74 -10 minecraft:lapis_block
setblock 6765 75 -10 minecraft:polished_blackstone_button[face=floor, facing=north]

# ボス部屋出口
fill 6745 77 3 6745 74 1 minecraft:smooth_sandstone

# foeceload remove
forceload remove 6923 23 6737 -37

# スコアの設定
scoreboard players set _ stage.15 1

#! debug
#tellraw @a {text: '[!] Stage 15 を構成しました。', color: "gray"}
