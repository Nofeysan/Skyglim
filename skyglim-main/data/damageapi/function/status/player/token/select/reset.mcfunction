#> damageapi:status/player/token/select/reset
# 
# 割り振りをリセットする処理
# 
# 

# stats reset
    # HP
    scoreboard players operation @s Health -= @s token.useto.hp
    scoreboard players operation @s Health -= @s token.useto.hp
    scoreboard players operation @s token += @s token.useto.hp
    scoreboard players set @s token.useto.hp 0

    # STR
    scoreboard players operation @s Strength -= @s token.useto.str
    scoreboard players operation @s token += @s token.useto.str
    scoreboard players set @s token.useto.str 0

    # DEF
    scoreboard players operation @s Defence -= @s token.useto.def
    scoreboard players operation @s token += @s token.useto.def
    scoreboard players set @s token.useto.def 0

    # CD
    scoreboard players operation @s CritDamage -= @s token.useto.cd
    scoreboard players operation @s CritDamage -= @s token.useto.cd
    scoreboard players operation @s token += @s token.useto.cd
    scoreboard players set @s token.useto.cd 0

    # MP
    scoreboard players operation @s MagicPoint -= @s token.useto.mp
    scoreboard players operation @s MagicPoint -= @s token.useto.mp
    scoreboard players operation @s token += @s token.useto.mp
    scoreboard players set @s token.useto.mp 0


    # LUCK
    scoreboard players operation @s Luck -= @s token.useto.luck
    scoreboard players operation @s Luck -= @s token.useto.luck
    scoreboard players operation @s Luck -= @s token.useto.luck
    scoreboard players operation @s token += @s token.useto.luck
    scoreboard players set @s token.useto.luck 0

# tell
tellraw @s [{translate: "token.reset", color: gray}, {translate: "token.get.count"}, {score: {name: "@s", objective: "token"}, color: "gold"}, {text: ")"}]

# sound
execute at @s run playsound minecraft:block.brewing_stand.brew voice @s ~ ~ ~ 1 0.5
