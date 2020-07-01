# called by entity/player/used_item/carrot_on_a_stick | entity/player/hurt_entity

# usage
execute if entity @s[tag=ttb_use_crtstck] if score #durability ttb_data matches 1.. run function ttb:item/staff/use_right
execute if entity @s[tag=ttb_hurt_entity] if score #durability ttb_data matches 1.. run function ttb:item/staff/use_left

# depletion
execute if entity @s[gamemode=!creative,gamemode=!spectator] run function ttb:item/staff/durability/deplete
