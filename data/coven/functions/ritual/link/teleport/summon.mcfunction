tag @s add coven.guided
scoreboard players set @s coven.cooldown 100
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Tags:["coven.guide"]}
execute as @e[tag=coven.guide,limit=1] run function coven:ritual/link/teleport/target
tag @s remove coven.guided
