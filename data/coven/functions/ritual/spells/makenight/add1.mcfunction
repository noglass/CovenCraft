time add 1t
scoreboard players remove #timeneed coven.light 1
execute if score #timeneed coven.light matches 1.. run function coven:ritual/spells/makenight/add1
