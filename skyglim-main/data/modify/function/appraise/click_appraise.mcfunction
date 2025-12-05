###*
###* 鑑定実行のアイテムをクリックした後
###*

###* アイテム置かれてなかったら fail
execute unless items block ~ ~-1 ~ container.13 * run function modify:appraise/fail_noitem

###* アイテムあるなら次の処理
execute if items block ~ ~-1 ~ container.13 * run function modify:appraise/list/check_1

###* アイテムを消しましょう
clear @s *[repair_cost=20000]

###* 元に戻す
function modify:appraise/inv_change

