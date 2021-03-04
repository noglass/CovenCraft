scoreboard players operation #timeneed coven.light = #time coven.light
execute if score #timeneed coven.light matches 100.. run function coven:ritual/spells/makeday/add100
execute if score #timeneed coven.light matches 10.. run function coven:ritual/spells/makeday/add10
execute if score #timeneed coven.light matches 1.. run function coven:ritual/spells/makeday/add1

