function coven:ritual/validate/gettier
execute if score @s coven.ritual matches 1.. run function coven:ritual/validate/valid
execute unless score @s coven.ritual matches 1.. run function coven:ritual/validate/invalid
tag @s add coven.handled
#function coven:ritual/setup
#scoreboard players reset @s coven.ritual
