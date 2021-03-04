summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dirt",Count:1b},Tags:["coven.handle"]}
execute as @e[tag=coven.handle,limit=1] run function coven:ritual/spells/ingredients/modify
data remove storage coven:ritual Ingredients.Items[-1]
scoreboard players remove #count coven.light 1
execute if score #count coven.light matches 1.. run function coven:ritual/spells/ingredients/summon
