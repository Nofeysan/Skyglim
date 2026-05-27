##> damageapi:player_tick
##* 
##* predicate/shop:is_luck
##* 
##* 

# food
execute if predicate shop:food/use_heart_berry run function shop:act/food/use_heart_berry
execute if predicate shop:food/use_yellow_berry run function shop:act/food/use_yellow_berry

# potion
execute if predicate shop:potion/use_caramel_tea run function shop:act/potion/use_caramel_tea
execute if predicate shop:potion/use_lady_grey run function shop:act/potion/use_lady_grey
execute if predicate shop:potion/use_royal_blend run function shop:act/potion/use_royal_blend
execute if predicate shop:potion/use_queens_choise run function shop:act/potion/use_queens_choise

execute if predicate shop:potion/use_mocha run function shop:act/potion/use_mocha
execute if predicate shop:potion/use_misty run function shop:act/potion/use_misty
execute if predicate shop:potion/use_maiotome run function shop:act/potion/use_maiotome
execute if predicate shop:potion/use_prelude run function shop:act/potion/use_prelude

# story用
execute if predicate shop:potion/use_story_star run function story:0-tutorial/use_star

# 帰還アイテム用
execute if predicate shop:potion/use_return_pearl run function stage:player/return/root
