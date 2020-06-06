#called by entity/player/clock16t

#recharge
execute store result score @s ttb_durab run data get entity @s SelectedItem.tag.ttb.durability
execute store result score @s ttb_durab_max run data get entity @s SelectedItem.tag.ttb.max_durability
execute if entity @s[predicate=ttb:entity/function/holding/staff] if score @s ttb_durab < @s ttb_durab_max run function ttb:item/staff/durability/recharge/dark_relic
