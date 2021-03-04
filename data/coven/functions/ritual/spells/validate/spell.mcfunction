execute store result score #count coven.light if data storage coven:ritual ListSort[]
scoreboard players set #spellid coven.light -1
scoreboard players set #reqtier coven.light 8
data remove storage coven:ritual TempSpells
execute if score #count coven.light matches 1 run data modify storage coven:ritual TempSpells set from storage coven:ritual Spells1
execute if score #count coven.light matches 2 run data modify storage coven:ritual TempSpells set from storage coven:ritual Spells2
execute if score #count coven.light matches 3 run data modify storage coven:ritual TempSpells set from storage coven:ritual Spells3
execute if score #count coven.light matches 4 run data modify storage coven:ritual TempSpells set from storage coven:ritual Spells4
execute if score #count coven.light matches 5 run data modify storage coven:ritual TempSpells set from storage coven:ritual Spells5
execute if score #count coven.light matches 6 run data modify storage coven:ritual TempSpells set from storage coven:ritual Spells6
execute if score #count coven.light matches 7 run data modify storage coven:ritual TempSpells set from storage coven:ritual Spells7
execute if score #count coven.light matches 8 run data modify storage coven:ritual TempSpells set from storage coven:ritual Spells8
execute if score #count coven.light matches 9 run data modify storage coven:ritual TempSpells set from storage coven:ritual Spells9
execute store result score #count coven.light if data storage coven:ritual TempSpells[]
execute if score #count coven.light matches 1.. run function coven:ritual/spells/validate/search
execute if score #spellid coven.light matches -1 run function coven:ritual/spells/invalid
execute if score #spellid coven.light matches 0.. if score #reqtier coven.light > @s coven.ritual run function coven:ritual/spells/overload
execute if score #spellid coven.light matches 0.. unless score #reqtier coven.light > @s coven.ritual run function coven:ritual/spells/cast
