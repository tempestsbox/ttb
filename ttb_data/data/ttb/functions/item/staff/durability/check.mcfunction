# called by entity/player/used_item/carrot_on_a_stick

# usage
execute if score @s[tag=ttb_use_crtstck] ttb_durab matches 1.. run function ttb:item/staff/use_right
execute if score @s[tag=ttb_hurt_entity] ttb_durab matches 1.. run function ttb:item/staff/use_left

# depletion
execute in overworld positioned 29999984 255 29999984 run function ttb:item/carrot_on_a_stick/durability/update
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{durability:0}}}}] run function ttb:item/staff/break
