#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

# forceload add
forceload add 9842 -276 9744 -467

# スポナー設置
function entity:spawner/set {id: 'stage/5/11', xyz: '9830 98 -341', block: 'bedrock'}
function entity:spawner/set {id: 'stage/5/11', xyz: '9830 98 -325', block: 'bedrock'}

function entity:spawner/set {id: 'stage/5/13', xyz: '9761 96 -326', block: 'bedrock'}
function entity:spawner/set {id: 'stage/5/13', xyz: '9761 96 -340', block: 'bedrock'}

function entity:spawner/set {id: 'stage/5/12', xyz: '9804 91 -371', block: 'iron_block'}
function entity:spawner/set {id: 'stage/5/12', xyz: '9786 99 -376', block: 'iron_block'}
function entity:spawner/set {id: 'stage/5/12', xyz: '9797 96 -396', block: 'beacon'}
function entity:spawner/set {id: 'stage/5/12', xyz: '9810 78 -394', block: 'iron_block'}
function entity:spawner/set {id: 'stage/5/12', xyz: '9794 77 -377', block: 'iron_block'}

# チェスト配置
data modify block 9782 110 -418 LootTable set value "entity:mob_drop/5/chest"

# token 部屋の壁
fill 9794 99 -356 9798 95 -356 minecraft:pink_stained_glass

# ボタン部屋の壁・ボタン
fill 9794 99 -401 9798 95 -401 minecraft:white_stained_glass

setblock 9796 78 -379 minecraft:polished_blackstone_button[face=floor, facing= south]
setblock 9781 102 -368 minecraft:polished_blackstone_button[face=floor, facing= east]
setblock 9802 97 -397 minecraft:polished_blackstone_button[face=floor, facing= east]
setblock 9815 77 -398 minecraft:polished_blackstone_button[face=floor, facing= east]

# foeceload remove
forceload remove 9842 -276 9744 -467

# スコアの設定
scoreboard players set _ stage.5 1
scoreboard players set $token_1 s5.gimmick 0
scoreboard players set $token_2 s5.gimmick 0
scoreboard players set $button s5.gimmick 0

#! debug
#tellraw @a {text: '[!] Stage 5 を構成しました。', color: "gray"}
