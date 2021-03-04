tag @s add coven.current
execute if block ~ ~ ~ minecraft:fire positioned ~ ~-0.1 ~ run function coven:ritual/validate/activate
execute as @e[type=minecraft:item,tag=!coven.handled,distance=..0.6,nbt={OnGround:1b}] run function coven:ritual/spells/ingredients/add
tag @s remove coven.current
