execute if entity @e[tag=coven.dimension,tag=!coven.no_day,tag=!coven.no_night,y=0] run function coven:ritual/spells/makenight/success
execute unless entity @e[tag=coven.dimension,tag=!coven.no_day,tag=!coven.no_night,y=0] run function coven:ritual/spells/makenight/failure
data modify entity @s Item set from storage coven:ritual ListSort[0]
