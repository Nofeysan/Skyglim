# scoreboard
scoreboard objectives add Damage dummy "武器ダメージ"
scoreboard objectives add Health dummy "体力"
scoreboard objectives add Strength dummy "攻撃力"
scoreboard objectives add CritChance dummy "クリティカル率"
scoreboard objectives add CritDamage dummy "クリティカルダメージ"
scoreboard objectives add Defence dummy "防御力"
scoreboard objectives add Speed dummy "移動速度"
scoreboard objectives add MagicPoint dummy "魔力"
scoreboard objectives add Luck dummy "運"
scoreboard objectives add StatusRegister dummy "初期設定用"

scoreboard objectives add act_Damage dummy "武器ダメージ(防具・オフハンド)"
scoreboard objectives add act_Health dummy "体力(防具・オフハンド)"
scoreboard objectives add act_Strength dummy "攻撃力(防具・オフハンド)"
scoreboard objectives add act_CritChance dummy "クリティカル率(防具・オフハンド)"
scoreboard objectives add act_CritDamage dummy "クリティカルダメージ(防具・オフハンド)"
scoreboard objectives add act_Defence dummy "防御力(防具・オフハンド)"
scoreboard objectives add act_Speed dummy "移動速度(防具・オフハンド)"
scoreboard objectives add act_MagicPoint dummy "魔力(防具・オフハンド)"
scoreboard objectives add act_Luck dummy "運(防具・オフハンド)"

scoreboard objectives add DamageTemp dummy "計算用"
scoreboard objectives add IsChangedStatus dummy "メインハンド検知用"

scoreboard objectives add MaxMP dummy "最大MP値"
scoreboard objectives add CurrentMP dummy "現在のMP値"
scoreboard objectives add ShowMaxMP dummy "最大MP値(表示)"
scoreboard objectives add ShowCurrentMP dummy "現在のMP値(表示)"

scoreboard objectives add IsSpawnerMined minecraft.mined:minecraft.spawner "スポナー壊した?"

scoreboard objectives add CurrentSelectSlot dummy "選択中のスロット番号"
scoreboard objectives add LastSelectedSlot dummy "前tickで選択してたスロット番号"

scoreboard objectives add DeathCount dummy "死亡検知"

scoreboard objectives add UnbreakingCoolDown dummy "enc. unbreaking"

# ダメージ計算用
scoreboard objectives add Temp dummy "ダメージ計算用"
scoreboard objectives add num dummy "数値"

scoreboard objectives add UseBow minecraft.used:minecraft.bow "弓使用"
scoreboard objectives add ChargeRate minecraft.custom:minecraft.damage_dealt_absorbed "与ダメージ"

scoreboard objectives add Damage.int dummy "ダメージ整数値"
scoreboard objectives add Damage.float dummy "ダメージ小数値"

scoreboard players set #-1 num -1
scoreboard players set #0 num 0
scoreboard players set #1 num 1
scoreboard players set #2 num 2
scoreboard players set #3 num 3
scoreboard players set #4 num 4
scoreboard players set #5 num 5
scoreboard players set #8 num 8
scoreboard players set #9 num 9
scoreboard players set #10 num 10
scoreboard players set #11 num 11
scoreboard players set #12 num 12
scoreboard players set #13 num 13
scoreboard players set #14 num 14
scoreboard players set #15 num 15
scoreboard players set #16 num 16
scoreboard players set #17 num 17
scoreboard players set #18 num 18
scoreboard players set #19 num 19
scoreboard players set #20 num 20
scoreboard players set #30 num 30
scoreboard players set #60 num 60
scoreboard players set #100 num 100
scoreboard players set #105 num 105
scoreboard players set #1000 num 1000
scoreboard players set #10000 num 10000

# 魔法用
scoreboard objectives add UseMagic minecraft.used:minecraft.carrot_on_a_stick "右クリ検知"
scoreboard objectives add MagicId dummy "魔法のid"
scoreboard objectives add MagicTemp dummy "魔法計算用"
scoreboard objectives add UseMagicCheck dummy "魔法計算用"

# 職業
scoreboard objectives add Level dummy "Levels"
scoreboard objectives add NextXp dummy "次のレベルまで"
scoreboard objectives add CurrentXp dummy "現在の経験値"
scoreboard objectives add CurrentLv dummy "今のレベル"
scoreboard objectives add XpRate dummy "経験値率"
scoreboard objectives add occupation dummy "職業選択"
scoreboard objectives add token dummy "ステータス振り"
scoreboard objectives add ShowXp dummy "経験値表示用"
scoreboard objectives add ShowXpTime dummy "経験値表示時間"

team add none "職業未設定"
team add archer "天弓"
team add berserker "狂戦士"
team add tank "護神"
team add mage "魔術師"
team add auspice "瑞祥"

team modify none color gray
team modify archer color dark_aqua
team modify berserker color red
team modify tank color dark_green
team modify mage color dark_purple
team modify auspice color aqua

team modify archer prefix {"text": "¤ ","color": "dark_aqua"}
team modify berserker prefix {"text": "⚔ ","color": "red"}
team modify tank prefix {"text": "∅ ","color": "dark_green"}
team modify mage prefix {"text": "‽ ","color": "dark_purple"}
team modify auspice prefix {"text": "☆ ","color": "aqua"}


# いずれグラデーションしたい
#scoreboard objectives modify Level displayname [{"text": "◆ Level ◆","color": "#c5edff"}]
#scoreboard players add $none Level 65535
#scoreboard players display name $none Level ""
#scoreboard players display numberformat $none Level blank
scoreboard objectives setdisplay list CurrentLv

# Gamerule
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule showDeathMessages false

# 統計
#! スポナー壊した数とか、受けたダメージとか......

# 一応通知
tellraw @a [{"text":"\uE010 ","color":"gray"},{"text":"Reload Completed!","color":"#44ddf4"}]



