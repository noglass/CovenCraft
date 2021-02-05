data modify entity @s Pos set from storage coven:ritual TelePos
execute at @s run teleport @e[tag=coven.guided] ~ ~ ~
kill @s
