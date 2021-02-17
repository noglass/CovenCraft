data modify entity @s Pos set from storage coven:ritual TelePos
execute at @s run function coven:ritual/spells/masstp/positioned
kill @s
