#> stage:manage/init
# 
# ワールド移行後に一度だけ実行する
# 
# 

# 各ステージの scoreboard 作成
scoreboard objectives add stage.1 dummy
scoreboard objectives add stage.2 dummy
scoreboard objectives add stage.3 dummy
scoreboard objectives add stage.4 dummy
scoreboard objectives add stage.5 dummy
scoreboard objectives add stage.6 dummy
scoreboard objectives add stage.7 dummy
scoreboard objectives add stage.8 dummy
scoreboard objectives add stage.9 dummy
scoreboard objectives add stage.10 dummy
scoreboard objectives add stage.11 dummy
scoreboard objectives add stage.12 dummy
scoreboard objectives add stage.13 dummy
scoreboard objectives add stage.14 dummy
scoreboard objectives add stage.15 dummy
scoreboard objectives add stage.16 dummy

scoreboard objectives add stage.ex.1 dummy
scoreboard objectives add stage.ex.2 dummy
scoreboard objectives add stage.ex.3 dummy
scoreboard objectives add stage.ex.4 dummy
scoreboard objectives add stage.ex.5 dummy
scoreboard objectives add stage.ex.6 dummy
scoreboard objectives add stage.ex.7 dummy
scoreboard objectives add stage.ex.8 dummy

# 初期値の設定
scoreboard players set _ stage.1 1
scoreboard players set _ stage.2 1
scoreboard players set _ stage.3 1
scoreboard players set _ stage.4 1
scoreboard players set _ stage.5 1
scoreboard players set _ stage.6 1
scoreboard players set _ stage.7 1
scoreboard players set _ stage.8 1
scoreboard players set _ stage.9 1
scoreboard players set _ stage.10 1
scoreboard players set _ stage.11 1
scoreboard players set _ stage.12 1
scoreboard players set _ stage.13 1
scoreboard players set _ stage.14 1
scoreboard players set _ stage.15 1
scoreboard players set _ stage.16 1

scoreboard players set _ stage.ex.1 1
scoreboard players set _ stage.ex.2 1
scoreboard players set _ stage.ex.3 1
scoreboard players set _ stage.ex.4 1
scoreboard players set _ stage.ex.5 1
scoreboard players set _ stage.ex.6 1
scoreboard players set _ stage.ex.7 1
scoreboard players set _ stage.ex.8 1

# 入場時のやつ
scoreboard objectives add stage.enter dummy

scoreboard objectives add s4.updown dummy


# ついでに街の初期設定
forceload add 60 168 138 202

# armorstand
    # weapon, armor, item, magic
    summon minecraft:armor_stand 100 52 198 {Tags: ["shop", "weapon"], Invisible: true, Invulnerable: true}
    summon minecraft:armor_stand 98 52 198 {Tags: ["shop", "armor"], Invisible: true, Invulnerable: true}
    summon minecraft:armor_stand 96 52 198 {Tags: ["shop", "other"], Invisible: true, Invulnerable: true}
    summon minecraft:armor_stand 75 53 172 {Tags: ["shop", "magic"], Invisible: true, Invulnerable: true}

    # restore, refinement, enchant
    summon minecraft:armor_stand 98 52 174 {Tags: ["shop", "restore"], Invisible: true, Invulnerable: true}
    summon minecraft:armor_stand 109 52 194 {Tags: ["shop", "refinement"], Invisible: true, Invulnerable: true}
    summon minecraft:armor_stand 109 52 174 {Tags: ["shop", "enchantment"], Invisible: true, Invulnerable: true}

    # sell
    summon minecraft:armor_stand 116 50 191 {Tags: ["shop", "sell"], Invisible: true, Invulnerable: true}

forceload remove 60 168 138 202

# 進行度
scoreboard players set $stage_progress _ 1
scoreboard players set $magic_progress story.progress 1
