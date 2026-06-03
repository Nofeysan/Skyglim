#> magic:macro/summon_armorstand
# 
# tag と、status を設定
# 
# 

$summon minecraft:item ~ ~ ~ {Tags:["magic", "$(id)"], PortalCooldown: 202, NoGravity: $(NoGravity), Glowing: $(Glowing), Invulnerable: true, data: {status: {dmg: $(dmg), str: -1, luck: $(luck)}}, Item: {id: "$(item)", components: {"minecraft:enchantment_glint_override": true, "minecraft:max_stack_size": 1}}}

#! debug
#$tellraw @a {text: "\ue010 次のマクロを設定しました：id: $(id), dmg: $(dmg)"}
