time add 10t
scoreboard players remove #timeneed coven.light 10
execute if score #timeneed coven.light matches 10.. run function coven:ritual/spells/makenight/add10
