execute as @s[scores={coven.candle=0,coven.ritual=2..}] unless score @s coven.ritual matches 3 unless score @s coven.ritual matches 5 unless score @s coven.ritual matches 7 run scoreboard players add @s coven.candle 16
execute as @s[scores={coven.candle=16,coven.ritual=1..5}] unless score @s coven.ritual matches 2..3 run scoreboard players add @s coven.candle 28
execute as @s[scores={coven.candle=44,coven.ritual=1..3}] run scoreboard players add @s coven.candle 40
execute unless score @s coven.candle matches 84.. positioned ~ ~ ~ run function coven:ritual/candles/tree
scoreboard players add @s coven.candle 1
