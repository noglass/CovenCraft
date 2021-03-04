tag @s add coven.ritual_inactive
#execute as @a[y=0,limit=1] run function coven:ritual/validate/getdimension
#tag @s add coven.getdim
#execute in minecraft:overworld if entity @e[tag=coven.getdim,y=0] run scoreboard players set @s coven.dim 0
#execute in minecraft:the_nether if entity @e[tag=coven.getdim,y=0] run scoreboard players set @s coven.dim 1
#execute in minecraft:the_end if entity @e[tag=coven.getdim,y=0] run scoreboard players set @s coven.dim 2
#tag @s remove coven.getdim
scoreboard players operation @s coven.dim = @e[tag=coven.dimension,y=0,limit=1] coven.dim
