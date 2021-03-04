forceload remove ~ ~
forceload add ~ ~
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["coven.dimension","coven.setup"]}
scoreboard players operation @e[tag=coven.setup] coven.dim = #next coven.dim
scoreboard players add #next coven.dim 1
tag @e[tag=coven.setup] remove coven.setup
