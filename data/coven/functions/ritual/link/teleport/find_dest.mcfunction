data modify storage coven:ritual IdentityPosTest set from storage coven:ritual IdentityPos
data modify storage coven:ritual IdentityItemTest set from storage coven:ritual IdentityItem
data modify storage coven:ritual IdentityPos set value []
data modify storage coven:ritual IdentityItem set value []
data modify storage coven:ritual IdentityPos append from storage coven:ritual IdentityPosFound[0]
data modify storage coven:ritual IdentityItem append from storage coven:ritual IdentityItemFound[0]
data modify storage coven:ritual IdentityItemTest3 set from storage coven:ritual IdentityItemFound[0]
data remove storage coven:ritual IdentityPosFound
data remove storage coven:ritual IdentityItemFound
execute store result score #count coven.light if data storage coven:ritual IdentityPosTest[]
execute if score #count coven.light matches 1.. run function coven:ritual/link/filteritem
data remove storage coven:ritual IdentityItemTest2
data remove storage coven:ritual IdentityItemTest3
execute store result score #count coven.light if data storage coven:ritual IdentityPosFound[]
execute if score #count coven.light matches 1.. run function coven:ritual/link/teleport/summon
