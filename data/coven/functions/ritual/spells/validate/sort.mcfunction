data modify storage coven:ritual TempSort append from storage coven:ritual Ingredients.tag.Items[-1]
data remove storage coven:ritual Ingredients.tag.Items[-1]
execute store result score #length2 coven.light run data get storage coven:ritual Ingredients.tag.Items[-1].id
execute if score #length coven.light >= #length2 coven.light run function coven:ritual/spells/validate/insert
execute if score #length coven.light < #length2 coven.light run function coven:ritual/spells/validate/sort
