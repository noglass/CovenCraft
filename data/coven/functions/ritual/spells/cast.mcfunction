say @s casts @e[tag=coven.ritual_marker,distance=..7,sort=nearest,limit=1] Spell!
execute if score #spellid coven.light matches 0 run function coven:ritual/spells/masstp/masstp
execute if score #spellid coven.light matches 1 run function coven:ritual/spells/ghast/ghast
