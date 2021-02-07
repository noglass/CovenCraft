data modify entity @s Pos set from storage coven:ritual IdentityPosFound[0].Pos
function coven:ritual/link/repopulate
execute at @s run teleport @a[tag=coven.guided] ~ ~0.6 ~
kill @s
