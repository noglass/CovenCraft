data modify storage coven:ritual IdentityPosTest set from storage coven:ritual IdentityPos
data modify storage coven:ritual IdentityItemTest set from storage coven:ritual IdentityItem
data modify storage coven:ritual IdentityPos set value []
data modify storage coven:ritual IdentityItem set value []
data modify storage coven:ritual IdentityPosTest3 set from entity @e[tag=coven.ritual_marker,distance=..0.7,limit=1] Pos
execute store result score #count coven.light if data storage coven:ritual IdentityPosTest[]
execute if score #count coven.light matches 1.. run function coven:ritual/link/filterpos
data remove storage coven:ritual IdentityPosTest2
data remove storage coven:ritual IdentityPosTest3
execute if data storage coven:ritual IdentityItemFound[0] run function coven:ritual/link/teleport/find_dest
data remove storage coven:ritual IdentityPosTest
data remove storage coven:ritual IdentityItemTest
data remove storage coven:ritual IdentityPosFound
data remove storage coven:ritual IdentityItemFound
