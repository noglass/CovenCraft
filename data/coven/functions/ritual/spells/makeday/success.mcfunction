scoreboard players set @s coven.cooldown 200
execute store result score #time coven.light run time query daytime
scoreboard players remove #time coven.light 23900
scoreboard players operation #time coven.light /= #neg100 coven.light

