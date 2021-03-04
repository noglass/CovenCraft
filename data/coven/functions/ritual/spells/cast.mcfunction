scoreboard players operation @s coven.spell = #spellid coven.light
tag @s add coven.active
say Casting @s Spell!
execute if score #spellid coven.light matches 0 run function coven:ritual/spells/masstp/masstp
execute if score #spellid coven.light matches 1 run function coven:ritual/spells/ghast/ghast
execute if score #spellid coven.light matches 2 run function coven:ritual/spells/makeday/makeday
execute if score #spellid coven.light matches 3 run function coven:ritual/spells/makenight/makenight
