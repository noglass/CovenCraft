data modify storage coven:ritual ListSort append from storage coven:ritual TempSortItem
execute store result score #count coven.light if data storage coven:ritual TempSort[]
function coven:ritual/spells/validate/refill
