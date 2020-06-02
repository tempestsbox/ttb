#called by block/breaker/cost

# audiovisuals
playsound item.firecharge.use block @a[distance=..16] ~ ~ ~ 1 0.6 1

# summon breaker markers
summon area_effect_cloud ^ ^ ^1 {Tags:["ttb_entity","ttb_breaker_entity"],Duration:2}
execute if score @s ttb_ascended matches 1.. run summon area_effect_cloud ^ ^ ^2 {Tags:["ttb_entity","ttb_breaker_entity"],Duration:2}
execute if score @s ttb_ascended matches 2.. run summon area_effect_cloud ^ ^ ^3 {Tags:["ttb_entity","ttb_breaker_entity"],Duration:2}
execute if score @s ttb_ascended matches 3.. run summon area_effect_cloud ^ ^ ^4 {Tags:["ttb_entity","ttb_breaker_entity"],Duration:2}
execute if score @s ttb_ascended matches 4.. run summon area_effect_cloud ^ ^ ^5 {Tags:["ttb_entity","ttb_breaker_entity"],Duration:2}
execute if score @s ttb_ascended matches 5.. run summon area_effect_cloud ^ ^ ^6 {Tags:["ttb_entity","ttb_breaker_entity"],Duration:2}
execute if score @s ttb_ascended matches 6.. run summon area_effect_cloud ^ ^ ^7 {Tags:["ttb_entity","ttb_breaker_entity"],Duration:2}

# reset scores
scoreboard players reset @s ttb_ascended
scoreboard players reset @s ttb_reduced
# trigger cooldown
scoreboard players operation @s ttb_machine_cool = $breaker ttb_machine_cool
