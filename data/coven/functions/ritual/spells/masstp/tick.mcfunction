execute at @e[tag=coven.tpPart,sort=nearest,limit=1] run particle minecraft:end_rod ~ ~ ~ 0.3 0.2 0.3 0 20
particle minecraft:witch ~ ~ ~ 2.5 0 2.5 0 10
execute at @e[tag=coven.tpPart,sort=nearest,limit=1] facing entity @s feet run teleport @e[tag=coven.tpPart,sort=nearest,limit=1] ^1.5 ^0.1 ^0.1
execute if score @s coven.cooldown matches 20 run function coven:ritual/spells/masstp/teleport
