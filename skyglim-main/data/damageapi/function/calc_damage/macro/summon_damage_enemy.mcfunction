#> damageapi:calc_damage/macro/summon_damage
# 
# ダメージ表記を summon
# 
# 

# ノーマルモブ
    # normal 
    $execute unless predicate entity:entity_small_enemy at @s rotated $(xy) $(z) positioned ^ ^ ^1 unless score DealtDamage Temp matches ..0 unless score c_did Temp matches 1 run summon minecraft:text_display ~ ~1.45 ~ {text: [{text: "$(dmgstr)", font: "minecraft:damage"}], Tags: ["damage_text"], background: 1, see_through: true, billboard: center}

    # crit
    $execute unless predicate entity:entity_small_enemy at @s rotated $(xy) $(z) positioned ^ ^ ^1 unless score DealtDamage Temp matches ..0 if score c_did Temp matches 1 run summon minecraft:text_display ~ ~1.45 ~ {text: [{text: "$(dmgstr)", font: "minecraft:crit_damage"}], Tags: ["damage_text"], background: 1, see_through: true, billboard: center}

# ちっちゃいモブ
    # normal 
    $execute if predicate entity:entity_small_enemy at @s rotated $(xy) $(z) positioned ^ ^ ^1 unless score DealtDamage Temp matches ..0 unless score c_did Temp matches 1 run summon minecraft:text_display ~ ~0.5 ~ {text: [{text: "$(dmgstr)", font: "minecraft:damage"}], Tags: ["damage_text"], background: 1, see_through: true, billboard: center}

    # crit
    $execute if predicate entity:entity_small_enemy at @s rotated $(xy) $(z) positioned ^ ^ ^1 unless score DealtDamage Temp matches ..0 if score c_did Temp matches 1 run summon minecraft:text_display ~ ~0.5 ~ {text: [{text: "$(dmgstr)", font: "minecraft:crit_damage"}], Tags: ["damage_text"], background: 1, see_through: true, billboard: center}

