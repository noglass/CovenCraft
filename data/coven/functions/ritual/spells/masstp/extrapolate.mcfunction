execute store result score @s coven.candle run data get entity @s Pos[0] 10
execute store result score @s coven.lue run data get entity @s Pos[2] 10
scoreboard players operation @s coven.candle -= #x coven.light
scoreboard players operation @s coven.lue -= #z coven.light
scoreboard players operation @s coven.candle += #x coven.candle
scoreboard players operation @s coven.light += #y coven.candle
scoreboard players operation @s coven.lue += #z coven.candle
data modify storage coven:ritual TelePos set value [0.0d,0.0d,0.0d]
execute store result storage coven:ritual TelePos[0] double 0.1 run scoreboard players get @s coven.candle
execute store result storage coven:ritual TelePos[1] double 0.1 run scoreboard players get @s coven.light
execute store result storage coven:ritual TelePos[2] double 0.1 run scoreboard players get @s coven.lue
tag @s add coven.guided
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Tags:["coven.guide"]}
execute as @e[tag=coven.guide,limit=1] run function coven:ritual/spells/masstp/target
tag @s remove coven.guided
tag @s remove coven.extract
