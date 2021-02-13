execute unless block ~ ~0.5 ~ #minecraft:fire run function coven:ritual/extinguish
execute if score @s coven.candle matches 0..83 run function coven:ritual/ignite
execute positioned ~ ~0.6 ~ as @e[type=minecraft:item,distance=..1,nbt=!{Health:5s}] run function coven:ritual/link/assign
effect give @a[distance=..2] minecraft:fire_resistance 1
execute if score @s coven.light matches 2 run setblock ~ ~ ~ minecraft:soul_soil
execute if score @s coven.light matches 2.. run scoreboard players remove @s coven.light 1
execute positioned ~ ~0.6 ~ as @a[distance=..1,nbt=!{Fire:20s}] run function coven:ritual/link/teleport/attempt
execute if entity @s[tag=coven.active] run function coven:ritual/spells/tick
