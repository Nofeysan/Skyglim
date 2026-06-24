## python を用いたファイル生成のやり方

### .json の書き方

```
[
    "<stage>": [
        {<item_data>},
        ...
    ]
]
```

* type 
sword: 1, s.sword: 2, axe: 3, bow: -1, crossbow: -2, armor: 4/5/6/7, shard: 9

* rarity
1: Normal, 2: Rare, 3: Epic, 4: Legendary, 5: Mythic

* id
repair_cost (スプシ参照)

* status
["dmg", "hp", "str", "cc", "cd", "def", "spd", "mp", "luck"]
設定なしなら 0 を記入

* has_ability
特殊効果の行数 [0, 1, 2]

* count
同一ステージ内での同レアリティのシリーズ数

* shop (boolean)
token ショップに追加する場合の json を出力するかどうか

* macro
各武器種の必要データを記入する
sword/s.sword/axe: {id: ""} | wooden/stone/iron/gold/diamond/netherite
bow: {s: } | s= second(cool_down), default: 0.25
crossbow: {p: , q: , m: } | p= piercing / q= charge_spd (0.0\5*lvl sec.) / m= multishot (lvl\*1 本)
armor, shard: {id: ""} | item_id ('minecraft:' 接頭辞は不要)

* model (任意)
custom_model_data を指定する（必要時のみ）。
false なら指定せず、あるなら str を指定する
記述例： `"model": "short_1"`

* trim (任意)
armor_trim を指定する（必要時のみ）。
記述例： `"trim": "{material: \"\", pattern: \"\"}"`



## ファイル生成
pythonファイルを実行すると生成されます。
ただし、ディレクトリの指定を忘れずに
