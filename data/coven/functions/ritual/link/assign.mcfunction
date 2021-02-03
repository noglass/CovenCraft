data modify entity @s Item.tag.active set value 1b
data modify storage coven:ritual IdentityPosTest set from storage coven:ritual IdentityPos
data modify storage coven:ritual IdentityItemTest set from storage coven:ritual IdentityItem
data modify storage coven:ritual IdentityPos set value []
data modify storage coven:ritual IdentityItem set value []
data modify storage coven:ritual IdentityPos append from entity @e[tag=coven.ritual_marker,distance=..0.7,limit=1] Pos
data modify storage coven:ritual IdentityItem append from entity @s Item
data modify storage coven:ritual IdentityPosTest3 set from storage coven:ritual IdentityPos[0]
execute store result score #count coven.light if data storage coven:ritual IdentityPosTest[]
execute if score #count coven.light matches 1.. run function coven:ritual/link/filterpos
data remove storage coven:ritual IdentityPosTest
data remove storage coven:ritual IdentityPosTest2
data remove storage coven:ritual IdentityPosTest3
data remove storage coven:ritual IdentityItemTest
data remove storage coven:ritual IdentityPosFound
data remove storage coven:ritual IdentityItemFound
kill @s
setblock ~ ~-1 ~ minecraft:netherrack
setblock ~ ~ ~ minecraft:fire
scoreboard players set @e[tag=coven.ritual_marker,distance=..0.7,limit=1] coven.light 20
