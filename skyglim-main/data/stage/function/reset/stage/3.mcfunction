#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 9727 269 9541 148
forceload add 9731 140 9527 -105
forceload add 9541 148 9396 -109

# スポナーの破壊
setblock 9705 20 90 minecraft:air
setblock 9704 20 65 minecraft:air
setblock 9707 26 143 minecraft:air
setblock 9714 26 160 minecraft:air
setblock 9701 26 172 minecraft:air
setblock 9704 26 242 minecraft:air
setblock 9688 26 255 minecraft:air
setblock 9687 27 230 minecraft:air
setblock 9671 27 243 minecraft:air
setblock 9651 25 255 minecraft:air
setblock 9646 25 235 minecraft:air
setblock 9633 27 245 minecraft:air
setblock 9585 25 215 minecraft:air
setblock 9574 26 224 minecraft:air
setblock 9558 25 216 minecraft:air
setblock 9585 25 127 minecraft:air
setblock 9573 24 139 minecraft:air
setblock 9570 26 156 minecraft:air
setblock 9530 27 115 minecraft:air
setblock 9536 27 111 minecraft:air
setblock 9548 28 63 minecraft:air
setblock 9564 28 63 minecraft:air
setblock 9572 29 45 minecraft:air
setblock 9564 27 29 minecraft:air
setblock 9540 26 31 minecraft:air
setblock 9449 27 80 minecraft:air
setblock 9458 27 92 minecraft:air
setblock 9446 27 113 minecraft:air
setblock 9428 27 91 minecraft:air
setblock 9420 31 114 minecraft:air
setblock 9428 30 118 minecraft:air
setblock 9630 24 156 minecraft:air
setblock 9637 26 81 minecraft:air
setblock 9641 28 71 minecraft:air
setblock 9638 26 55 minecraft:air
setblock 9698 25 7 minecraft:air
setblock 9688 25 -5 minecraft:air
setblock 9706 25 -8 minecraft:air
setblock 9636 24 -19 minecraft:air
setblock 9633 23 -33 minecraft:air
setblock 9642 25 -42 minecraft:air
setblock 9636 25 -94 minecraft:air
setblock 9656 31 -100 minecraft:air
setblock 9654 39 -88 minecraft:air
setblock 9592 25 -40 minecraft:air
setblock 9594 22 -25 minecraft:air
setblock 9582 23 -23 minecraft:air
setblock 9554 25 -99 minecraft:air
setblock 9547 27 -81 minecraft:air
setblock 9536 26 -78 minecraft:air
setblock 9492 24 -49 minecraft:air
setblock 9475 24 -54 minecraft:air
setblock 9456 24 -50 minecraft:air
setblock 9447 23 -34 minecraft:air
setblock 9450 24 -13 minecraft:air
setblock 9461 26 2 minecraft:air
setblock 9479 26 3 minecraft:air
setblock 9493 26 -8 minecraft:air
setblock 9503 25 -27 minecraft:air

# foeceload remove
forceload remove 9727 269 9541 148
forceload remove 9731 140 9527 -105
forceload remove 9541 148 9396 -109

# スコアのリセット
scoreboard players set _ stage.3 -1

# boss 用
#bossbar remove minecraft:stage2.boss

#! debug
tellraw @a {text: '[!] Stage 3 をリセットしました。', color: "gray"}
