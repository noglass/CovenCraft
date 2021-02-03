summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["test"]}
execute as @e[tag=test,limit=1] run function coven:ritual/test2
