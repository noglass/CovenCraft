data modify storage coven:ritual IdentityPos prepend from storage coven:ritual IdentityPosFound[-1]
data modify storage coven:ritual IdentityItem prepend from storage coven:ritual IdentityItemFound[-1]
data remove storage coven:ritual IdentityPosFound[-1]
data remove storage coven:ritual IdentityItemFound[-1]
scoreboard players remove #count coven.light 1
execute if score #count coven.light matches 1.. run function coven:ritual/link/repopulate
