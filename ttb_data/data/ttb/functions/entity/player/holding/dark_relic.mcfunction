#called by entity/player/clock16t

#recharge
execute store result score @s ttb_staff_dur run data get entity @s SelectedItem.tag.ttb.staff.durability
execute store result score @s ttb_staff_durmax run data get entity @s SelectedItem.tag.ttb.staff.max_durability
execute if entity @s[predicate=ttb:entity/player/holding/staff] if score @s ttb_staff_dur < @s ttb_staff_durmax run function ttb:item/staff/durability/recharge/dark_relic
