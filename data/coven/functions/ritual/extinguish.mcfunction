execute unless block ~ ~ ~ minecraft:soul_soil run kill @e[type=minecraft:item,limit=1,distance=..1,nbt={Item:{id:"minecraft:soul_soil",Count:1b}}]
execute if score @s coven.fcharge matches 0 run setblock ~ ~ ~ minecraft:crying_obsidian
execute unless score @s coven.fcharge matches 0 run setblock ~ ~ ~ minecraft:amethyst_block
data modify storage coven:ritual IdentityPosTest set from storage coven:ritual IdentityPos
data modify storage coven:ritual IdentityItemTest set from storage coven:ritual IdentityItem
data modify storage coven:ritual IdentityPos set value []
data modify storage coven:ritual IdentityItem set value []
data modify storage coven:ritual IdentityPosTest3 set from entity @s Pos
execute store result score #count coven.light if data storage coven:ritual IdentityPosTest[]
execute if score #count coven.light matches 1.. run function coven:ritual/link/filterpos
execute if data storage coven:ritual IdentityPosFound[] run function coven:ritual/link/deactivate
data remove storage coven:ritual IdentityPosTest
data remove storage coven:ritual IdentityPosTest2
data remove storage coven:ritual IdentityPosTest3
data remove storage coven:ritual IdentityItemTest
data remove storage coven:ritual IdentityPosFound
data remove storage coven:ritual IdentityItemFound
scoreboard players set @s coven.light 0
scoreboard players set @s coven.candle 0
execute positioned ~ ~1 ~ run function coven:ritual/candles/recurs_exting
playsound minecraft:entity.generic.extinguish_fire block @a
kill @s

