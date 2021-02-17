teleport @e[tag=coven.partCenter,distance=..0.1,limit=1] ~ ~0.1 ~
execute if score @s coven.cooldown matches 9..13 run particle minecraft:dragon_breath ~ ~ ~ 0.1 0 0.1 0 3
execute if score @s coven.cooldown matches 37..41 run particle minecraft:dragon_breath ~ ~ ~ 0.1 0 0.1 0 3
execute if score @s coven.cooldown matches 14..16 run particle minecraft:dragon_breath ~ ~ ~ 0.2 0 0.2 0 4
execute if score @s coven.cooldown matches 34..36 run particle minecraft:dragon_breath ~ ~ ~ 0.2 0 0.2 0 4
execute if score @s coven.cooldown matches 17..19 run particle minecraft:dragon_breath ~ ~ ~ 0.4 0 0.4 0 5
execute if score @s coven.cooldown matches 31..33 run particle minecraft:dragon_breath ~ ~ ~ 0.4 0 0.4 0 5
execute if score @s coven.cooldown matches 20..23 run particle minecraft:dragon_breath ~ ~ ~ 0.6 0 0.6 0 6
execute if score @s coven.cooldown matches 27..30 run particle minecraft:dragon_breath ~ ~ ~ 0.6 0 0.6 0 6
execute if score @s coven.cooldown matches 24..26 run particle minecraft:dragon_breath ~ ~ ~ 0.8 0 0.8 0 10
