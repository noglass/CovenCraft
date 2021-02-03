scoreboard players add @s coven.cooldown 0
execute if score @s coven.cooldown matches 0 run function coven:ritual/link/teleport/find_source
scoreboard players set @s[scores={coven.cooldown=90..99}] coven.cooldown 100
