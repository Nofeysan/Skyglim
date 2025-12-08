##> damageapi:calc_damage/macro/when_death
##* 
##* プレイヤー起点に実行させる (as @p)
##* 
##* 

#? 一旦乱数使えるように出しときますね
execute store result score random Temp run random value 0..9999

#! debug
#-tellraw @s [{text: "\ue010 乱数(0..9999) → ",color: "#aaaaaa"},{"score": {"name": "random","objective": "Temp"}}]

###* as (攻撃者)
# 祝砲
execute if predicate modify:enchantment/armor.h/firework run summon minecraft:firework_rocket ~ ~6.4 ~ \
{FireworksItem:{id:"minecraft:firework_rocket", components:{"minecraft:fireworks":{explosions:[{shape: star,colors:[4513268, 6147243, 12971519, 12575891]}]}}},Life:10}

# キルエフェクト
execute if predicate modify:enchantment/armor.h/particle run particle minecraft:dust{color:[0.7490196078431370,0.8941176470588240,0.5764705882352940],scale:0.9} ~ ~ ~ 0.7 1.2 0.7 0 120 force @a
execute if predicate modify:enchantment/armor.h/particle run particle minecraft:dust{color:[0.7568627450980390,0.0549019607843137,0.2862745098039220],scale:0.9} ~ ~ ~ 0.7 1.2 0.7 0 120 force @a
execute if predicate modify:enchantment/armor.h/particle run particle minecraft:dust{color:[0.7490196078431370,0.4117647058823530,0.9568627450980390],scale:0.9} ~ ~ ~ 0.7 1.2 0.7 0 120 force @a

# sound effect
execute if predicate modify:enchantment/armor.h/sound run playsound minecraft:entity.wolf.howl voice @a ~ ~ ~ 0.15 1

# すべてを(ry
execute if predicate modify:enchantment/armor.c/allrobbing if score random Temp matches 0..49 run scoreboard players operation @s CurrentHealth = @s MaxHealth
execute if predicate modify:enchantment/armor.c/allrobbing if score random Temp matches 0..49 run scoreboard players operation @s CurrentMP = @s MaxMP
execute if predicate modify:enchantment/armor.c/allrobbing if score random Temp matches 0..49 at @s run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 0.7 0.5
execute if predicate modify:enchantment/armor.c/allrobbing if score random Temp matches 0..49 run tellraw @s [{text: "\uE010 Enchant 発動！体力と魔力が全回復した！",color: "#746aac"}]

# ライフスティール
execute if predicate modify:enchantment/weapon/lifesteal run function damageapi:calc_damage/enemy/armor/lifesteal

# マナスティール
execute if predicate modify:enchantment/weapon/manasteal run function damageapi:calc_damage/enemy/armor/manasteal

# 収集家
execute if predicate modify:enchantment/weapon/collecter run function damageapi:calc_damage/enemy/armor/collecter
