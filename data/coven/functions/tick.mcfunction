#tag @e[type=minecraft:item_frame,tag=!coven.frame] add coven.frame
#tag @e[type=minecraft:glow_item_frame,tag=!coven.frame] add coven.frame
execute at @a unless entity @e[tag=coven.dimension,y=0] positioned -30000000 0 8880 run function coven:chunk/dimension/add
execute as @e[type=minecraft:item,nbt={Item:{tag:{covenIngredients:1b}}}] at @s run function coven:ritual/spells/ingredients/remove
execute at @a[scores={coven.framed=1..}] as @e[type=minecraft:glow_item_frame,distance=..5,tag=!coven.handled,limit=1,nbt={Facing:1b}] at @s positioned ~ ~-0.1 ~ run function coven:ritual/validate/structure
scoreboard players reset @a[scores={coven.framed=1..}] coven.framed
execute as @e[tag=coven.ritual_inactive] at @s run function coven:ritual/inactive_tick
execute as @e[tag=coven.ritual_marker] at @s run function coven:ritual/tick
scoreboard players remove @a[scores={coven.cooldown=1..}] coven.cooldown 1
