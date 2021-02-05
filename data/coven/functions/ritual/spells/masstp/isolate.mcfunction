execute store result score @s coven.light run data get entity @s Pos[1] 10
scoreboard players operation @s coven.light -= #y coven.light
tag @s[scores={coven.light=0..}] add coven.extract
