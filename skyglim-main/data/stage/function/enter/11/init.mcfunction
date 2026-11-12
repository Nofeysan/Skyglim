#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

# forceload add
forceload add 10749 -323 10419 -444

# スポナー設置
function entity:spawner/set {id: 'stage/11/11', xyz: '10716 266 -346', block: 'iron_block'}
function entity:spawner/set {id: 'stage/11/11', xyz: '10722 266 -346', block: 'iron_block'}
function entity:spawner/set {id: 'stage/11/12', xyz: '10716 266 -361', block: 'iron_block'}
function entity:spawner/set {id: 'stage/11/14', xyz: '10722 266 -361', block: 'iron_block'}
function entity:spawner/set {id: 'stage/11/13', xyz: '10719 265 -385', block: 'iron_block'}
function entity:spawner/set {id: 'stage/11/12', xyz: '10702 265 -400', block: 'iron_block'}

function entity:spawner/set {id: 'stage/11/19', xyz: '10677 265 -400', block: 'iron_block'}
function entity:spawner/set {id: 'stage/11/19', xyz: '10663 268 -379', block: 'iron_block'}
function entity:spawner/set {id: 'stage/11/19', xyz: '10651 272 -413', block: 'iron_block'}
function entity:spawner/set {id: 'stage/11/19', xyz: '10636 269 -429', block: 'iron_block'}
function entity:spawner/set {id: 'stage/11/19', xyz: '10636 278 -383', block: 'beacon'}
function entity:spawner/set {id: 'stage/11/19', xyz: '10619 277 -401', block: 'obsidian'}
function entity:spawner/set {id: 'stage/11/19', xyz: '10606 280 -427', block: 'iron_block'}
function entity:spawner/set {id: 'stage/11/19', xyz: '10594 285 -408', block: 'iron_block'}
function entity:spawner/set {id: 'stage/11/19', xyz: '10609 282 -372', block: 'iron_block'}
function entity:spawner/set {id: 'stage/11/19', xyz: '10586 290 -384', block: 'iron_block'}
function entity:spawner/set {id: 'stage/11/19', xyz: '10567 291 -405', block: 'beacon'}

function entity:spawner/set {id: 'stage/11/11', xyz: '10539 291 -367', block: 'iron_block'}
function entity:spawner/set {id: 'stage/11/12', xyz: '10539 291 -355', block: 'iron_block'}
function entity:spawner/set {id: 'stage/11/14', xyz: '10538 299 -360', block: 'obsidian'}
function entity:spawner/set {id: 'stage/11/13', xyz: '10539 308 -361', block: 'beacon'}

# チェスト配置
data modify block 10613 277 -401 LootTable set value "entity:mob_drop/11/chest"
data modify block 10539 307 -361 LootTable set value "entity:mob_drop/10/chest"

# ボス召喚設置
setblock 10449 283 -368 minecraft:command_block{Command: "function stage:boss/11/summon"}
setblock 10449 284 -368 minecraft:lapis_block
setblock 10449 285 -368 minecraft:polished_blackstone_button[face=floor, facing=north]

# ボス部屋出口
fill 10448 284 -386 10450 284 -388 minecraft:lapis_block

# foeceload remove
forceload remove 10749 -323 10419 -444

# スコアの設定
scoreboard players set _ stage.11 1

#! debug
#tellraw @a {text: '[!] Stage 11 を構成しました。', color: "gray"}
