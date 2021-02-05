execute store result score #x coven.light run data get storage coven:ritual IdentityPosTest3[0] 10
execute store result score #y coven.light run data get storage coven:ritual IdentityPosTest3[1] 10
execute store result score #z coven.light run data get storage coven:ritual IdentityPosTest3[2] 10
execute store result score #x coven.candle run data get storage coven:ritual IdentityPosFound[0][0] 10
execute store result score #y coven.candle run data get storage coven:ritual IdentityPosFound[0][1] 10
execute store result score #z coven.candle run data get storage coven:ritual IdentityPosFound[0][2] 10
execute if score @s coven.ritual matches 4.. as @e[tag=!coven.ritual_marker,distance=..7] run function coven:ritual/spells/masstp/isolate
execute if score @s coven.ritual matches 2..3 as @e[tag=!coven.ritual_marker,distance=..5] run function coven:ritual/spells/masstp/isolate
execute if score @s coven.ritual matches 1 as @e[tag=!coven.ritual_marker,distance=..3] run function coven:ritual/spells/masstp/isolate
execute as @e[tag=coven.extract] run function coven:ritual/spells/masstp/extrapolate
function coven:ritual/link/repopulate
