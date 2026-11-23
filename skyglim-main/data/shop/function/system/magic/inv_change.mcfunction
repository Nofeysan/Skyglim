
# 1: 初期
execute if score $magic_progress story.progress matches 1 run function shop:system/magic/inv_1

# 2: S3~
execute if score $magic_progress story.progress matches 2 run function shop:system/magic/inv_2


# 5: S3~
execute if score $magic_progress story.progress matches 5 run function shop:system/magic/inv_5

# debug
#execute at @a run playsound minecraft:entity.experience_orb.pickup master @a ~ ~-1 ~ 0.5 2
