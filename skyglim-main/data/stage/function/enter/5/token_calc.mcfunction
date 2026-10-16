#> stage:enter/5/token_calc
# 
# token check
# 
# as @p で実行すること
# 

# もう終わってるでしょ？
execute if score $total_gold s5.gimmick matches 12.. if score $total_silver s5.gimmick matches 12.. run return fail

# 数を取得
execute store result score $gold s5.gimmick run clear @s *[minecraft:repair_cost=300501]
execute store result score $silver s5.gimmick run clear @s *[minecraft:repair_cost=300502]

# token 持ってないでしょ？
execute if score $gold s5.gimmick matches 0 if score $silver s5.gimmick matches 0 run return run function stage:enter/5/no_token

# 計算
scoreboard players operation $total_gold s5.gimmick += $gold s5.gimmick
scoreboard players operation $total_silver s5.gimmick += $silver s5.gimmick

# 進捗
tellraw @a ["", {translate: "stage.5.token.press", color: "#bfcfd8"}, \
{text: "[", color: "gold"}, {score: {name: "$total_gold", objective: "s5.gimmick"}, color: "gold"}, {text: "/12] ", color: "gold"},\
{text: "[", color: "#939393"}, {score: {name: "$total_silver", objective: "s5.gimmick"}, color: "#939393"}, {text: "/12]", color: "#939393"}]

# sound
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.3 2

# 12個ずつならおーけー
execute if score $total_gold s5.gimmick matches 12.. if score $total_silver s5.gimmick matches 12.. run function stage:enter/5/token_open
