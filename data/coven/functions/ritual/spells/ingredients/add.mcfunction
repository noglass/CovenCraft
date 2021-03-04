data modify storage coven:ritual TempSort set value []
data remove storage coven:ritual Ingredient
data remove storage coven:ritual Ingredients
data modify storage coven:ritual Ingredients set from entity @e[tag=coven.current,limit=1] Item
execute unless data storage coven:ritual Ingredients.tag.covenIngredients if data storage coven:ritual Ingredients.id run function coven:ritual/spells/ingredients/placed
data merge storage coven:ritual {Ingredients:{id:"",Count:1b,tag:{covenIngredients:1b}}}
data modify storage coven:ritual TempSortItem set from entity @s Item
data modify storage coven:ritual Ingredients.id set from storage coven:ritual TempSortItem.id
kill @s
execute store result score #length coven.light run data get storage coven:ritual TempSortItem.id
execute store result score #length2 coven.light run data get storage coven:ritual Ingredients.tag.Items[-1].id
execute if score #length coven.light >= #length2 coven.light run data modify storage coven:ritual Ingredients.tag.Items append from storage coven:ritual TempSortItem
execute if score #length coven.light < #length2 coven.light run function coven:ritual/spells/validate/sort
data remove entity @e[tag=coven.current,limit=1] Item.id
data modify entity @e[tag=coven.current,limit=1] Item set from storage coven:ritual Ingredients
