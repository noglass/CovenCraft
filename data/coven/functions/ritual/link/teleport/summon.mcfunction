tag @s add coven.guided
scoreboard players set @s coven.cooldown 100
execute store result score #dimension coven.dim run data get storage coven:ritual IdentityPosFound[0].Dimension
execute as @e[tag=coven.dimension] at @s if score @s coven.dim = #dimension coven.dim run summon minecraft:area_effect_cloud -30000000 ~ 8880 {Duration:0,Tags:["coven.guide"]}
execute as @e[tag=coven.guide,limit=1] run function coven:ritual/link/teleport/target
tag @s remove coven.guided
