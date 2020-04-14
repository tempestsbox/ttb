#called by entity/player/clock16t

#recharge
execute if score @s ttb_relic_damage >= $threshold ttb_relic_damage run particle soul_fire_flame ~ ~ ~ 0 0 0 0.1 50 normal @a

execute store result score @s ttb_staff_dur run data get entity @s SelectedItem.tag.ttb.staff.durability
execute store result score @s ttb_staff_durmax run data get entity @s SelectedItem.tag.ttb.staff.max_durability
execute if score @s ttb_relic_damage >= $threshold ttb_relic_damage if entity @s[predicate=ttb:entity/player/holding/staff] if score @s ttb_staff_dur < @s ttb_staff_durmax run function ttb:item/staff/durability/recharge/bright_relic
