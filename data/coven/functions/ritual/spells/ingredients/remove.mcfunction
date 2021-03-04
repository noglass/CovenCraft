data remove storage coven:ritual Ingredients
data modify storage coven:ritual Ingredients.Items set from entity @s Item.tag.Items
data modify storage coven:ritual Ingredients.Motion set from entity @s Motion
kill @s
execute store result score #count coven.light if data storage coven:ritual Ingredients.Items[]
function coven:ritual/spells/ingredients/summon

