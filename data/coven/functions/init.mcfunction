scoreboard objectives add coven.framed minecraft.used:minecraft.glow_item_frame
scoreboard objectives add coven.ritual dummy
scoreboard objectives add coven.light dummy
scoreboard objectives add coven.candle dummy
scoreboard objectives add coven.cooldown dummy
scoreboard objectives add coven.lue dummy
scoreboard objectives add coven.spell dummy
scoreboard objectives add coven.dim dummy
scoreboard players add #next coven.dim 0
scoreboard players set #neg100 coven.light -200
scoreboard players set #neg24000 coven.light -24000
function coven:ritual/spells/init
