#c alled by tick

# breaker
execute if entity @s[tag=ttb_breaker_entity] unless block ~ ~ ~ #ttb:block/breaker/cannot_remove run function ttb:block/breaker/break_block

# shatter staff tnt raycast
execute if entity @s[tag=ttb_shatter_staff_raycast] run function ttb:item/staff/shatter/raycast_loop

# world generation
## spawn structures
execute if entity @s[tag=ttb_structure,tag=!ttb_structure_invalid] run function ttb:world/structure/check_structure
