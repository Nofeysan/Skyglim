# scoreboard
scoreboard objectives add GetDamage dummy "ダメージ受けた後の無敵時間"
scoreboard objectives add Timer dummy "1sec. timer"
scoreboard objectives add BeforeTrans dummy "Transportationまでの時間"
scoreboard objectives add EffectorCount dummy

# team
team add enemy
team modify enemy color red
team modify enemy friendlyFire false

# team
team add bomb.1
team modify bomb.1 color red
team add bomb.2
team modify bomb.2 color yellow
team add bomb.3
team modify bomb.3 color green
team add bomb.4
team modify bomb.4 color blue
