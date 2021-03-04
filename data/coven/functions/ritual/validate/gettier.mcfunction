scoreboard players reset @s coven.ritual
execute if predicate coven:struct_t1 run scoreboard players add @s coven.ritual 1
tellraw @s[scores={coven.ritual=1}] "Tier 1 reached"
execute if predicate coven:struct_t2 run scoreboard players add @s coven.ritual 2
tellraw @s[scores={coven.ritual=2..}] "Tier 2 reached"
execute if predicate coven:struct_t3 run scoreboard players add @s coven.ritual 4
tellraw @s[scores={coven.ritual=4..}] "Tier 3 reached"
tellraw @a [{"text":"coven.ritual value: "},{"score":{"name":"@s","objective":"coven.ritual"}}]
