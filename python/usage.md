## python を用いたファイル生成のやり方

### 概要
jsonでデータベースを作成し、それを読み込んでpythonを用いてファイルの生成を行います。\
実行する際にはpythonの実行環境が必要です。

loot_table(.json) と mcf(.mcfunction) の二つを作成します。

### .json の書き方

```
[
    "<stage>": [
        {<item_data>},
        ...
    ],
    "<stage>": [
        {<item_data>},
        ...
    ],
    ...
]
```

* type\
`sword: 1`, `s.sword: 2`, `axe: 3`, `bow: -1`, `crossbow: -2`, `armor: 4/5/6/7`, `shard: 9`

* rarity\
`1: Normal`, `2: Rare`, `3: Epic`, `4: Legendary`, `5: Mythic`

* id\
repair_cost (スプシ参照)

* status\
`["dmg", "hp", "str", "cc", "cd", "def", "spd", "mp", "luck"]`\
設定なしなら 0 を記入

* has_ability\
特殊効果の行数 `[0, 1, 2]`

* count\
同一ステージ内での同レアリティのシリーズ数\
輝石についてはシリーズ数 + 通し番号（10, 11, ...）

* shop (boolean)\
token ショップに追加する場合の json を出力するかどうか

* macro\
各武器種の必要データを記入する\
`sword/s.sword/axe: {id: ""}` | `wooden/stone/iron/gold/diamond/netherite`\
`bow: {s: }` | `s= second(cool_down)`, default: 0.25\
`crossbow: {p: , q: , m: }` | `p= piercing` / `q= charge_spd` (0.05\*lvl sec.) / `m= multishot` (lvl\*1 本)\
`armor, shard: {id: ""}` | `item_id` ('minecraft:' 接頭辞は不要)\

* model (任意)\
custom_model_data を指定する（必要時のみ）。\
false なら指定せず、あるなら str を指定する。\
記述例： `"model": "short_1"`

* trim (任意)\
armor_trim を指定する（必要時のみ）。\
記述例： `"trim": "{material: \"\", pattern: \"\"}"`

* color (任意)\
革装備用の染色値（int）を記入する。カラーコードを10進法にしたものを入れる。\
記述例： `"color": 15357190` (#ea5506 = 15357190)



### ファイル生成
pythonファイルを実行すると生成されます。\
ただし、ディレクトリの指定を忘れずに

`~` の部分は各自の環境に合わせてください。\
また、pythonコード内ではバックスラッシュをエスケープしてください。

* run_item.bat: 宝箱状態のアイテムと、任意でショップ用のアイテムを作成します。\
指定するべきディレクトリ\
`~\skyglim-main\data\entity\loot_table\mob_drop\`

* run_restore.bat: 鑑定する際の実行ファイルを生成します。\
指定するべきディレクトリ\
`~\skyglim-main\data\modify\function\restore\list\nums\`


## resources における翻訳キーを用いた実装のやり方
アイテム作成時の翻訳キーの作成規則は以下の通りです。

`stage.<stage>.<rarity>-<type>.<count>.<name/lore>`

\<> の各パラメータの説明は以下の通りです。
* stage: 該当ステージ。1階層目のほう。
* rarity: レアリティ。数字ではなく英語表記での接頭辞である。\
(1: n, 2: r, 3: e, 4: l, 5: m)
* type: 装備タイプ。同様に英語表記を乗せる。\
(1: sword, 2: s.sword, 3: axe, \-1: bow, \-2: crossbow, 4: head, 5: chest, 6: legs, 7: boots, 9: shard)
* count: シリーズ数。int
* name/lore: name ならその名前、lore なら説明文を指定する。
loreの場合、さらに lore.1/lore.2 の二つを指定し、ぴったり二行の説明を入れる。（json 内なので改行は不可）


## カスタムモデルの設定
各アイテムには任意で独自のモデルを設定できる。\
また、各アイテムは `item_model` を用いているのでその元アイテムに対して追加をすればよい。

* sword/s.sword/axe: `minecraft:feather`
* bow: `minecraft:bow`
* crossbow: `minecraft:crossbow`
* armor: 各種部位のまま
* shard: `minecraft:clock`
