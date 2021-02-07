scoreboard players add @s coven.cooldown 0
scoreboard players set #reqtier coven.light 0
execute if score @s coven.cooldown matches 0 run function coven:ritual/link/teleport/find_source
execute if score @s coven.cooldown matches 0 if score #count coven.light matches 1.. run function coven:ritual/link/teleport/summon
scoreboard players set @s[scores={coven.cooldown=90..99}] coven.cooldown 100
