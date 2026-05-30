#> shop:token/open/2
# 
# shop open
# 
# 

# set
    # forceload
    forceload add 96 263 84 263

    # set
    setblock 90 61 263 minecraft:barrel
    setblock 90 65 263 minecraft:deepslate_tile_wall
    setblock 90 64 263 minecraft:lantern[hanging= true]
    summon minecraft:armor_stand 90 62 263 {Tags: ["shop", "token-4"], Invisible: true, Invulnerable: true}
    
    # forceload remove
    forceload remove 96 263 84 263

# tell
tellraw @a {translate: "token.shop.open", color: "#6eb487"}
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
