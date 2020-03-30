#called by entity/player/used_item/carrot_on_a_stick

execute store result score @s ttb_staff_dur run data get entity @s SelectedItem.tag.ttb.staff.durability

execute unless score @s ttb_staff_dur matches 1.. run playsound block.redstone_torch.burnout player @s ~ ~ ~ .1 2 1
execute if score @s ttb_staff_dur matches 1.. run function ttb:item/staff/check_staff
