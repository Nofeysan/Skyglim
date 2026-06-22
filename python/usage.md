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

<type> sword: 1, s.sword: 2, axe: 3, bow: -1, crossbow: -2, armor: 4/5/6/7, shard: 9
<rarity> 1: Normal, 2: Rare, 3: Epic, 4: Legendary, 5: Mythic
<id> repair_cost (スプシ参照)
<status> ["dmg", "hp", "str", "cc", "cd", "def", "spd", "mp", "luck"] | 設定なしなら 0 を記入
<has_ability> 特殊効果の行数 [0, 1, 2]
<count> 同一ステージ内での同レアリティのシリーズ数
<shop> token ショップに追加する場合の json を出力するかどうか [boolean]

## ファイル生成
pythonファイルを実行すると生成されます。
ただし、ディレクトリの指定を忘れずに

restore のほうは生成後手動で記述をしているので、そのまま実行すると全部初期化されます

