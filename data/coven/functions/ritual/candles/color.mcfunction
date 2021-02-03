execute if block ~ ~ ~ minecraft:candle run function coven:ritual/candles/color/00
execute if block ~ ~ ~ minecraft:white_candle run function coven:ritual/candles/color/01
execute if block ~ ~ ~ minecraft:orange_candle run function coven:ritual/candles/color/02
execute if block ~ ~ ~ minecraft:magenta_candle run function coven:ritual/candles/color/03
execute if block ~ ~ ~ minecraft:light_blue_candle run function coven:ritual/candles/color/04
execute if block ~ ~ ~ minecraft:yellow_candle run function coven:ritual/candles/color/05
execute if block ~ ~ ~ minecraft:lime_candle run function coven:ritual/candles/color/06
execute if block ~ ~ ~ minecraft:pink_candle run function coven:ritual/candles/color/07
execute if block ~ ~ ~ minecraft:gray_candle run function coven:ritual/candles/color/08
execute if block ~ ~ ~ minecraft:light_gray_candle run function coven:ritual/candles/color/09
execute if block ~ ~ ~ minecraft:cyan_candle run function coven:ritual/candles/color/10
execute if block ~ ~ ~ minecraft:purple_candle run function coven:ritual/candles/color/11
execute if block ~ ~ ~ minecraft:blue_candle run function coven:ritual/candles/color/12
execute if block ~ ~ ~ minecraft:brown_candle run function coven:ritual/candles/color/13
execute if block ~ ~ ~ minecraft:green_candle run function coven:ritual/candles/color/14
execute if block ~ ~ ~ minecraft:red_candle run function coven:ritual/candles/color/15
execute if block ~ ~ ~ minecraft:black_candle run function coven:ritual/candles/color/16
execute if score @s coven.light matches 1 unless score @s coven.candle matches 0..14 unless score @s coven.candle matches 16..42 unless score @s coven.candle matches 44..82 run playsound minecraft:entity.blaze.shoot block @a
