data modify storage coven:ritual IdentityItemFound[0].tag.active set value 1b
execute store result storage coven:ritual IdentityPosFound[0].Tier byte 1 run scoreboard players get @s coven.ritual
data modify storage coven:ritual IdentityPos append from storage coven:ritual IdentityPosFound[0]
data modify storage coven:ritual IdentityItem append from storage coven:ritual IdentityItemFound[0]
