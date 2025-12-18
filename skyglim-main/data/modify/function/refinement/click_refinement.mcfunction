#> modify:refinement/click_refinement
#
# 鑑定実行のアイテムをクリックした後
#
#

###* アイテム置かれてなかったら fail
execute unless items block ~ ~-1 ~ container.13 * run function modify:refinement/fail_noitem

###* アイテムあるなら次の処理
execute if items block ~ ~-1 ~ container.13 * run function modify:refinement/check_1

###* アイテムを消しましょう
clear @s *[repair_cost=30000]

###* 元に戻す
function modify:refinement/inv_change
