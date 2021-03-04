data modify storage coven:ritual Ingredients.tag.Items append from storage coven:ritual TempSort[-1]
data remove storage coven:ritual TempSort[-1]
scoreboard players remove #count coven.light 1
execute if score #count coven.light matches 1.. run function coven:ritual/spells/validate/refill
