# 計算用
scoreboard objectives add CurrentHealth dummy "現在の体力"
scoreboard objectives add Absorption dummy "緩衝体力"
scoreboard objectives add MaxHealth dummy "最大体力"
scoreboard objectives add CalcHealth dummy "割合計算用"
scoreboard objectives add HealthTemp dummy "一時保管用"
scoreboard objectives add DamageScore dummy "ダメージ用"

scoreboard objectives add ShowCurrentHealth dummy "現在の体力(表示用)"
scoreboard objectives add ShowMaxHealth dummy "最大体力(表示用)"
scoreboard objectives add ShowAbsorption dummy "緩衝体力(表示用)"

scoreboard players set #-1 CalcHealth -1
scoreboard players set #5 CalcHealth 5
scoreboard players set #100 CalcHealth 100







