data modify storage coven:ritual TempSort append from storage coven:ritual ListSort[-1]
data remove storage coven:ritual ListSort[-1]
execute store result score #length2 coven.light run data get storage coven:ritual ListSort[-1].id
execute if score #length coven.light >= #length2 coven.light run function coven:ritual/spells/validate/insert
execute if score #length coven.light < #length2 coven.light run function coven:ritual/spells/validate/sort
