# called by block/growth_aura/cost/check

# audiovisuals
playsound entity.experience_orb.pickup block @a[distance=..16] ~ ~ ~ 1 0.6 1

# break blocks, based on ascension
execute positioned ^ ^ ^1 if block ~ ~ ~ #ttb:block/growth_aura/can_grow run function ttb:block/growth_aura/grow
execute if score @s ttb_ascended matches 1.. positioned ^ ^ ^2 if block ~ ~ ~ #ttb:block/growth_aura/can_grow run function ttb:block/growth_aura/grow
execute if score @s ttb_ascended matches 2.. positioned ^ ^ ^3 if block ~ ~ ~ #ttb:block/growth_aura/can_grow run function ttb:block/growth_aura/grow
execute if score @s ttb_ascended matches 3.. positioned ^ ^ ^4 if block ~ ~ ~ #ttb:block/growth_aura/can_grow run function ttb:block/growth_aura/grow
execute if score @s ttb_ascended matches 4.. positioned ^ ^ ^5 if block ~ ~ ~ #ttb:block/growth_aura/can_grow run function ttb:block/growth_aura/grow
execute if score @s ttb_ascended matches 5.. positioned ^ ^ ^6 if block ~ ~ ~ #ttb:block/growth_aura/can_grow run function ttb:block/growth_aura/grow

# reset scores
scoreboard players reset @s ttb_ascended
scoreboard players reset @s ttb_reduced
# trigger cooldown
scoreboard players operation @s ttb_machine_cool = $growth_aura ttb_machine_cool

# generic triggered functions
function ttb:block/machine/triggered
