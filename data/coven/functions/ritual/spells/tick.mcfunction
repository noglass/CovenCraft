execute if score @s coven.spell matches 0 run scoreboard players set @s coven.cooldown 1
execute if score @s coven.spell matches 1 run function coven:ritual/spells/ghast/tick
tag @s[scores={coven.cooldown=..1}] remove coven.active
scoreboard players remove @s coven.cooldown 1
