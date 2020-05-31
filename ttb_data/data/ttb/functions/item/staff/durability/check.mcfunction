#called by entity/player/used_item/carrot_on_a_stick

# get current durability
execute store result score @s ttb_staff_dur run data get entity @s SelectedItem.tag.ttb.staff.durability

# usage
execute if score @s[tag=ttb_use_crtstck] ttb_staff_dur matches 1.. run function ttb:item/staff/use_right
execute if score @s[tag=ttb_hurt_entity] ttb_staff_dur matches 1.. run function ttb:item/staff/use_left

# depletion
execute in overworld positioned 29999984 255 29999984 run function ttb:item/staff/durability/update
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:{durability:0}}}}}] run function ttb:item/staff/break
