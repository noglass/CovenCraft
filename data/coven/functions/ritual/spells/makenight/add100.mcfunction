time add 100t
scoreboard players remove #timeneed coven.light 100
execute if score #timeneed coven.light matches 100.. run function coven:ritual/spells/makenight/add100
