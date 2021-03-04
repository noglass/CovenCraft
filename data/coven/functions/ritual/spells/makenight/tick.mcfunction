scoreboard players operation #timeneed coven.light = #time coven.light
execute if score #timeneed coven.light matches 100.. run function coven:ritual/spells/makenight/add100
execute if score #timeneed coven.light matches 10.. run function coven:ritual/spells/makenight/add10
execute if score #timeneed coven.light matches 1.. run function coven:ritual/spells/makenight/add1

