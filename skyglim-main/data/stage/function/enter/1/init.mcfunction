#> stage:enter/1/init
# 
# ステージを構成する
# 
# 


# forceload add
forceload add 9849 -8 9951 131

# スポナー設置
function entity:spawner/set {id: 'stage/1/1', xyz: '9879 13 27'}
function entity:spawner/set {id: 'stage/1/1', xyz: '9889 12 14'}
function entity:spawner/set {id: 'stage/1/1', xyz: '9903 15 23'}
function entity:spawner/set {id: 'stage/1/1', xyz: '9905 16 36'}
function entity:spawner/set {id: 'stage/1/1', xyz: '9922 17 28'}
function entity:spawner/set {id: 'stage/1/1', xyz: '9926 17 33'}

# チェスト配置
data modify block 9894 16 5 LootTable set value "entity:mob_drop/1/chest"
data modify block 9931 23 19 LootTable set value "entity:mob_drop/1/chest"

# foeceload remove
forceload remove 9849 -8 9951 131

# スコアの設定
scoreboard players set _ stage.1 1

#! debug
tellraw @a {text: '[!] Stage 1 を構成しました。', color: "gray"}
