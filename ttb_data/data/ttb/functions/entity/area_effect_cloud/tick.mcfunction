# called by tick

# shatter staff tnt raycast
execute if entity @s[tag=ttb_shatter_staff_raycast] run function ttb:item/staff/shatter/raycast_loop

# world generation
# spawn structures
execute if entity @s[tag=ttb_structure,tag=!ttb_structure_invalid] run function ttb:world/structure/check_structure

# traps
execute if entity @s[tag=ttb_trap] run function ttb:world/structure/trap_check
