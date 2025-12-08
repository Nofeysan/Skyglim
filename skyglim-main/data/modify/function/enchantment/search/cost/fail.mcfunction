# 通知
tellraw @s [{text: "\uE010 ",color: "gray"},{text: "レベルが足りません！ (必要レベル : ",color: "#d94262"},{"score": {"name": "e.req","objective": "Temp"},color: "#92f3a4"},{text: ")",color: "#d94262"}]
execute at @s run playsound minecraft:block.dispenser.dispense voice @s ~ ~ ~ 0.8 2

# アイテム消す
clear @s *\
[\
repair_cost=40001 | \
repair_cost=40002 | \
repair_cost=40003 | \
repair_cost=40004 | \
repair_cost=40005 | \
repair_cost=41005 | \
repair_cost=42005 | \
\
repair_cost=43001 | \
repair_cost=43002 | \
repair_cost=43003 | \
repair_cost=43004 | \
repair_cost=43005 | \
repair_cost=43006 | \
repair_cost=43007 | \
\
repair_cost=44001 | \
repair_cost=44002 | \
repair_cost=44003 | \
repair_cost=44004 | \
repair_cost=44005 | \
repair_cost=44006 | \
repair_cost=44007 | \
\
repair_cost=45001 | \
repair_cost=45002 | \
repair_cost=45003 | \
repair_cost=45004 | \
repair_cost=45005 | \
repair_cost=45006 | \
repair_cost=45007 | \
\
repair_cost=46001 | \
repair_cost=46002 | \
repair_cost=46003 | \
repair_cost=46004 | \
repair_cost=46005 | \
repair_cost=46006 | \
repair_cost=46007 | \
\
repair_cost=47001 | \
repair_cost=47002 | \
repair_cost=47003 | \
repair_cost=47004\
]

# tag
tag @s add e.failed
