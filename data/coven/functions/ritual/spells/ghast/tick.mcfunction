execute if score @s coven.cooldown matches 9..41 as @e[tag=coven.partSpin,sort=nearest,limit=1] at @s run function coven:ritual/spells/ghast/spin
execute if score @s coven.cooldown matches 9..41 at @e[tag=coven.partCenter,sort=nearest,limit=1] run function coven:ritual/spells/ghast/diamond
execute if score @s coven.cooldown matches 1 run summon minecraft:ghast ~ ~2.1 ~ {DeathLootTable:"coven:crying_ghast"}
execute if score @s coven.cooldown matches 1 run particle minecraft:dragon_breath ~ ~2.6 ~ 3 3 3 0.2 100
