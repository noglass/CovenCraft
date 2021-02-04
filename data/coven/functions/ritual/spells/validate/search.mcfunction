scoreboard players remove #count coven.light 1
execute store success score #match coven.light run data modify storage coven:ritual TempSpells[-1].Items set from storage coven:ritual ListSort
execute if score #match coven.light matches 0 store result score #spellid coven.light run data get storage coven:ritual TempSpells[-1].SpellID
execute if score #match coven.light matches 0 store result score #reqtier coven.light run data get storage coven:ritual TempSpells[-1].Tier
execute if score #match coven.light matches 0 run data modify entity @e[tag=coven.ritual_marker,distance=..7,sort=nearest,limit=1] CustomName set from storage coven:ritual TempSpells[-1].Name
execute if score #match coven.light matches 1 run data remove storage coven:ritual TempSpells[-1]
execute if score #match coven.light matches 1 if score #count coven.light matches 1.. run function coven:ritual/spells/search
