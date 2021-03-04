#summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["coven.ritual_marker"]}
#scoreboard players operation @e[tag=coven.ritual_marker,distance=..0.1,limit=1] coven.ritual = @s coven.ritual
#execute as @e[tag=coven.ritual_marker,distance=..0.1,limit=1] run function coven:ritual/setscores
scoreboard players set @s coven.framed 0
execute if block ~ ~-0.1 ~ minecraft:amethyst_block run scoreboard players set @s coven.framed 1
scoreboard players set @s coven.candle 0
scoreboard players set @s coven.light 1
tag @s add coven.ritual_marker
tag @s remove coven.ritual_inactive
setblock ~ ~-0.1 ~ minecraft:soul_soil
data modify storage coven:ritual IdentityPosTest set from storage coven:ritual IdentityPos
data modify storage coven:ritual IdentityItemTest set from storage coven:ritual IdentityItem
data modify storage coven:ritual IdentityPos set value []
data modify storage coven:ritual IdentityItem set value []
data modify storage coven:ritual IdentityPosFound set value []
data modify storage coven:ritual IdentityItemFound set value []
data modify storage coven:ritual IdentityPosTest3 set from entity @s Pos
execute store result score #count coven.light if data storage coven:ritual IdentityPosTest[]
execute if score #count coven.light matches 1.. run function coven:ritual/link/filterpos
execute if data storage coven:ritual IdentityPosFound[] run function coven:ritual/link/activate
data remove storage coven:ritual ListSort
data modify storage coven:ritual ListSort set from entity @s Item.tag.Items
data remove entity @s Item.id
function coven:ritual/spells/validate/spell
