data modify storage coven:ritual TempSort set value []
data modify storage coven:ritual TempSortItem set from entity @s Item
kill @s
execute store result score #length coven.light run data get storage coven:ritual TempSortItem.id
execute store result score #length2 coven.light run data get storage coven:ritual ListSort[-1].id
execute if score #length coven.light >= #length2 coven.light run data modify storage coven:ritual ListSort append from storage coven:ritual TempSortItem
execute if score #length coven.light < #length2 coven.light run function coven:ritual/spells/validate/sort
