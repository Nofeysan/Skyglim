#> modify:restore/list/nums/restore-done
# 
# restore 後の演出
# 
# 

# 通知
tellraw @s [{text: "\uE010 ",color: "gray"},{text: "鑑定完了！",color: "#44ddf4"}]

# 演出
execute at @s run playsound minecraft:entity.player.levelup voice @a ~ ~-1 ~ 1 1.5
execute at @s run playsound minecraft:block.anvil.use voice @a ~ ~-1 ~ 0.5 0.5
