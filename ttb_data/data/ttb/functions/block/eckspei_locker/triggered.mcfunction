# called by block/eckspei_locker/cost/check

# absorb experience, with distance based on ascension
execute positioned ^ ^-.5 ^1 if block ~ ~ ~ #ttb:passthrough run function ttb:block/eckspei_locker/absorb_experience/check_rotation
execute if score @s ttb_ascended matches 1.. positioned ^ ^-.5 ^2 if block ~ ~ ~ #ttb:passthrough run function ttb:block/eckspei_locker/absorb_experience/check_rotation
execute if score @s ttb_ascended matches 2.. positioned ^ ^-.5 ^3 if block ~ ~ ~ #ttb:passthrough run function ttb:block/eckspei_locker/absorb_experience/check_rotation
execute if score @s ttb_ascended matches 3.. positioned ^ ^-.5 ^4 if block ~ ~ ~ #ttb:passthrough run function ttb:block/eckspei_locker/absorb_experience/check_rotation
execute if score @s ttb_ascended matches 4.. positioned ^ ^-.5 ^5 if block ~ ~ ~ #ttb:passthrough run function ttb:block/eckspei_locker/absorb_experience/check_rotation
execute if score @s ttb_ascended matches 5.. positioned ^ ^-.5 ^6 if block ~ ~ ~ #ttb:passthrough run function ttb:block/eckspei_locker/absorb_experience/check_rotation

# audiovisuals
execute if score #eckspei_locker_orb_value_total ttb_data matches 1.. run function ttb:block/eckspei_locker/audiovisuals

# store experience
scoreboard players operation @s ttb_ecks_loc_exp += #eckspei_locker_orb_value_total ttb_data

scoreboard players reset #eckspei_locker_orb_value ttb_data
scoreboard players reset #eckspei_locker_orb_value_total ttb_data

# reset scores
scoreboard players reset @s ttb_ascended
scoreboard players reset @s ttb_reduced
# trigger cooldown
scoreboard players operation @s ttb_machine_cool = $eckspei_locker ttb_machine_cool
