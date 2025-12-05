###* 
###*   id: 100002
###*   MP: 10
###*   name: ダメージ
###* 

###? 敵いるかチェック
execute if entity @e[predicate=entity:entity_enemy,distance=..30] run function magic:act/100002-2
execute unless entity @e[predicate=entity:entity_enemy,distance=..30] run function magic:check/fail-noenemy

