# called by block/breaker/cost/check

# audiovisuals
playsound item.firecharge.use block @a[distance=..16] ~ ~ ~ 1 0.6 1

# summon breaker markers
execute positioned ^ ^ ^1 unless block ~ ~ ~ #ttb:block/breaker/cannot_remove run function ttb:block/breaker/break_block
execute if score @s ttb_ascended matches 1.. positioned ^ ^ ^2 unless block ~ ~ ~ #ttb:block/breaker/cannot_remove run function ttb:block/breaker/break_block
execute if score @s ttb_ascended matches 2.. positioned ^ ^ ^3 unless block ~ ~ ~ #ttb:block/breaker/cannot_remove run function ttb:block/breaker/break_block
execute if score @s ttb_ascended matches 3.. positioned ^ ^ ^4 unless block ~ ~ ~ #ttb:block/breaker/cannot_remove run function ttb:block/breaker/break_block
execute if score @s ttb_ascended matches 4.. positioned ^ ^ ^5 unless block ~ ~ ~ #ttb:block/breaker/cannot_remove run function ttb:block/breaker/break_block
execute if score @s ttb_ascended matches 5.. positioned ^ ^ ^6 unless block ~ ~ ~ #ttb:block/breaker/cannot_remove run function ttb:block/breaker/break_block
execute if score @s ttb_ascended matches 6.. positioned ^ ^ ^7 unless block ~ ~ ~ #ttb:block/breaker/cannot_remove run function ttb:block/breaker/break_block

# reset scores
scoreboard players reset @s ttb_ascended
scoreboard players reset @s ttb_reduced
# trigger cooldown
scoreboard players operation @s ttb_machine_cool = $breaker ttb_machine_cool
