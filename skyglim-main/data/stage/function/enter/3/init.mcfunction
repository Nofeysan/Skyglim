#> stage:enter/1/init
# 
# ステージを構成する
# 
# 

# forceload add
forceload add 9727 269 9541 148
forceload add 9731 140 9527 -105
forceload add 9541 148 9396 -109

# スポナー設置
function entity:spawner/set {id: 'stage/3/1', xyz: '9705 20 90'}
function entity:spawner/set {id: 'stage/3/2', xyz: '9704 20 65'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9707 26 143'}
function entity:spawner/set {id: 'stage/3/4', xyz: '9714 26 160'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9701 26 172'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9704 26 242'}
function entity:spawner/set {id: 'stage/3/3', xyz: '9688 26 255'}
function entity:spawner/set {id: 'stage/3/2', xyz: '9687 27 230'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9671 27 243'}
function entity:spawner/set {id: 'stage/3/4', xyz: '9651 25 255'}
function entity:spawner/set {id: 'stage/3/4', xyz: '9646 25 235'}
function entity:spawner/set {id: 'stage/3/2', xyz: '9633 27 245'}
function entity:spawner/set {id: 'stage/3/3', xyz: '9585 25 215'}
function entity:spawner/set {id: 'stage/3/2', xyz: '9574 26 224'}
function entity:spawner/set {id: 'stage/3/3', xyz: '9558 25 216'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9585 25 127'}
function entity:spawner/set {id: 'stage/3/4', xyz: '9573 24 139'}
function entity:spawner/set {id: 'stage/3/2', xyz: '9570 26 156'}
function entity:spawner/set {id: 'stage/3/3', xyz: '9530 27 115'}
function entity:spawner/set {id: 'stage/3/3', xyz: '9536 27 111'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9548 28 63'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9564 28 63'}
function entity:spawner/set {id: 'stage/3/4', xyz: '9572 29 45'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9564 27 29'}
function entity:spawner/set {id: 'stage/3/3', xyz: '9540 26 31'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9449 27 80'}
function entity:spawner/set {id: 'stage/3/2', xyz: '9458 27 92'}
function entity:spawner/set {id: 'stage/3/3', xyz: '9446 27 113'}
function entity:spawner/set {id: 'stage/3/3', xyz: '9428 27 91'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9420 31 114'}
function entity:spawner/set {id: 'stage/3/4', xyz: '9428 30 118'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9630 24 156'}
function entity:spawner/set {id: 'stage/3/4', xyz: '9637 26 81'}
function entity:spawner/set {id: 'stage/3/4', xyz: '9641 28 71'}
function entity:spawner/set {id: 'stage/3/4', xyz: '9638 26 55'}
function entity:spawner/set {id: 'stage/3/3', xyz: '9698 25 7'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9688 25 -5'}
function entity:spawner/set {id: 'stage/3/2', xyz: '9706 25 -8'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9636 24 -19'}
function entity:spawner/set {id: 'stage/3/2', xyz: '9633 23 -33'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9642 25 -42'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9636 25 -94'}
function entity:spawner/set {id: 'stage/3/2', xyz: '9656 31 -100'}
function entity:spawner/set {id: 'stage/3/4', xyz: '9654 39 -88'}
function entity:spawner/set {id: 'stage/3/3', xyz: '9592 25 -40'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9594 22 -25'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9582 23 -23'}
function entity:spawner/set {id: 'stage/3/2', xyz: '9554 25 -99'}
function entity:spawner/set {id: 'stage/3/3', xyz: '9547 27 -81'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9536 26 -78'}
function entity:spawner/set {id: 'stage/3/4', xyz: '9492 24 -49'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9475 24 -54'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9456 24 -50'}
function entity:spawner/set {id: 'stage/3/3', xyz: '9447 23 -34'}
function entity:spawner/set {id: 'stage/3/2', xyz: '9450 24 -13'}
function entity:spawner/set {id: 'stage/3/2', xyz: '9461 26 2'}
function entity:spawner/set {id: 'stage/3/4', xyz: '9479 26 3'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9493 26 -8'}
function entity:spawner/set {id: 'stage/3/1', xyz: '9503 25 -27'}

# チェスト配置
data modify block 9651 40 -85 LootTable set value "entity:mob_drop/3/chest"
data modify block 9554 24 -99 LootTable set value "entity:mob_drop/3/chest"
data modify block 9540 25 31 LootTable set value "entity:mob_drop/3/chest"
data modify block 9565 25 164 LootTable set value "entity:mob_drop/3/chest"
data modify block 9433 27 108 LootTable set value "entity:mob_drop/3/chest"

# ボス召喚設置
#setblock 9878 21 -89 minecraft:command_block{Command: "function stage:boss/2/summon"}
#setblock 9878 22 -89 minecraft:lapis_block
#setblock 9878 23 -89 minecraft:polished_blackstone_button[face=floor, facing=north]

# ボス部屋出口
#fill 9877 25 -100 9879 22 -100 minecraft:dark_oak_log

# foeceload remove
forceload remove 9727 269 9541 148
forceload remove 9731 140 9527 -105
forceload remove 9541 148 9396 -109

# スコアの設定
scoreboard players set _ stage.3 1

#! debug
#tellraw @a {text: '[!] Stage 3 を構成しました。', color: "gray"}
