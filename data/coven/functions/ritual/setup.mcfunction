summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["coven.ritual_marker"]}
scoreboard players operation @e[tag=coven.ritual_marker,distance=..0.1,limit=1] coven.ritual = @s coven.ritual
execute as @e[tag=coven.ritual_marker,distance=..0.1,limit=1] run function coven:ritual/setscores
setblock ~ ~ ~ minecraft:soul_soil
data modify storage coven:ritual IdentityPosTest set from storage coven:ritual IdentityPos
data modify storage coven:ritual IdentityItemTest set from storage coven:ritual IdentityItem
data modify storage coven:ritual IdentityPos set value []
data modify storage coven:ritual IdentityItem set value []
data modify storage coven:ritual IdentityPosTest3 set from entity @e[tag=coven.ritual_marker,distance=..0.1,limit=1] Pos
execute store result score #count coven.light if data storage coven:ritual IdentityPosTest[]
execute if score #count coven.light matches 1.. run function coven:ritual/link/filterpos
execute if data storage coven:ritual IdentityPosFound[] run function coven:ritual/link/activate
data remove storage coven:ritual IdentityPosTest
data remove storage coven:ritual IdentityPosTest2
data remove storage coven:ritual IdentityPosTest3
data remove storage coven:ritual IdentityItemTest
data remove storage coven:ritual IdentityPosFound
data remove storage coven:ritual IdentityItemFound
#execute positioned ~ ~0.6 ~ as @e[type=minecraft:item,distance=..1,nbt=!{Fire:-20s}] run function coven:ritual/validate/spell
execute positioned ~ ~0.6 ~ run kill @e[type=minecraft:item,distance=..1,nbt=!{Fire:-20s}]
