# called by block/alchemy_chamber/cost/check

# convert blocks, based on ascension
execute positioned ^ ^ ^1 run function ttb:block/alchemy_chamber/check_block
execute if score @s ttb_ascended matches 1.. positioned ^ ^ ^2 run function ttb:block/alchemy_chamber/check_block
execute if score @s ttb_ascended matches 2.. positioned ^ ^ ^3 run function ttb:block/alchemy_chamber/check_block
execute if score @s ttb_ascended matches 3.. positioned ^ ^ ^4 run function ttb:block/alchemy_chamber/check_block
execute if score @s ttb_ascended matches 4.. positioned ^ ^ ^5 run function ttb:block/alchemy_chamber/check_block
execute if score @s ttb_ascended matches 5.. positioned ^ ^ ^6 run function ttb:block/alchemy_chamber/check_block

# reset scores
scoreboard players reset @s ttb_ascended
scoreboard players reset @s ttb_reduced
# trigger cooldown
scoreboard players operation @s ttb_machine_cool = $alchemy_chamber ttb_machine_cool

# generic triggered functions
function ttb:block/machine/triggered
