data modify storage coven:ritual IdentityPosTest2 set from storage coven:ritual IdentityPosTest3
execute store success score @s coven.light run data modify storage coven:ritual IdentityPosTest2 set from storage coven:ritual IdentityPosTest[-1]
execute if score @s coven.light matches 1 run data modify storage coven:ritual IdentityPos append from storage coven:ritual IdentityPosTest[-1]
execute if score @s coven.light matches 1 run data modify storage coven:ritual IdentityItem append from storage coven:ritual IdentityItemTest[-1]
execute if score @s coven.light matches 0 run data modify storage coven:ritual IdentityPosFound append from storage coven:ritual IdentityPosTest[-1]
execute if score @s coven.light matches 0 run data modify storage coven:ritual IdentityItemFound append from storage coven:ritual IdentityItemTest[-1]
data remove storage coven:ritual IdentityPosTest[-1]
data remove storage coven:ritual IdentityItemTest[-1]
scoreboard players remove #count coven.light 1
execute if score #count coven.light matches 1.. run function coven:ritual/link/filterpos
