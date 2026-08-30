#> damageapi:calc_damage/macro/summon_damage
# 
# ダメージ表記を summon
# 
# 

$execute at @s positioned ~ ~1.2 ~ run summon minecraft:text_display ^ ^ ^1 {text: [{text: "$(dmgstr)", font: "minecraft:player_damage"}], Tags: ["damage_text"], background: 1, see_through: true, billboard: center}
