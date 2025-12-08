#> damageapi:calc_damage/enemy/armor/when_damage
# 
# ダメージ与えたときのエンチャント効果
# 
# 

# 攻撃は最大の(ry
execute if predicate modify:enchantment/armor.f/attack if score random Temp matches 1..10 run function damageapi:calc_damage/enemy/armor/attack

# 吸血
execute if predicate modify:enchantment/armor.l/vamp run function damageapi:calc_damage/enemy/armor/vamp

# 攻撃報酬
execute if predicate modify:enchantment/armor.f/reward if score random Temp matches 1..10 run function damageapi:calc_damage/enemy/armor/reword

# キセキ
execute if predicate modify:enchantment/armor.f/miracle if score c_did Temp matches 1 run function damageapi:calc_damage/enemy/armor/miracle

# 打ち上げ
execute if predicate modify:enchantment/weapon/levitation run function damageapi:calc_damage/enemy/armor/levitation
