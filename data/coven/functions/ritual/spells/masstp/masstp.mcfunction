function coven:ritual/link/teleport/find_source
execute if score #count coven.light matches 1.. run function coven:ritual/spells/masstp/summon
