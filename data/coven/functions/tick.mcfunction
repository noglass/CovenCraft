execute as @a[scores={coven.fcharge=1..}] at @s at @e[type=item,distance=..5,tag=!coven.handled,limit=1] align xyz if block ~ ~ ~ minecraft:fire positioned ~0.5 ~-0.1 ~0.5 run function coven:ritual/validate/structure
scoreboard players reset @a[scores={coven.fcharge=1..}] coven.fcharge
execute as @e[tag=coven.ritual_marker] at @s run function coven:ritual/tick
