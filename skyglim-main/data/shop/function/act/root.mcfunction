##> damageapi:player_tick
##* 
##* predicate/shop:is_luck
##* 
##* 

# food
execute if predicate shop:food/use_heart_berry run function shop:act/food/use_heart_berry
execute if predicate shop:food/use_yellow_berry run function shop:act/food/use_yellow_berry

# potion
execute if predicate shop:potion/use_mocha run function shop:act/potion/use_mocha
execute if predicate shop:potion/use_misty run function shop:act/potion/use_misty
execute if predicate shop:potion/use_maiotome run function shop:act/potion/use_maiotome
execute if predicate shop:potion/use_prelude run function shop:act/potion/use_prelude

