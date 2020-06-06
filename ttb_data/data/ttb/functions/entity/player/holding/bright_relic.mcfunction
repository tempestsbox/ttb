#called by entity/player/clock16t

#recharge
execute if score @s ttb_relic_damage >= $threshold ttb_relic_damage run particle soul_fire_flame ~ ~ ~ 0 0 0 0.1 50 normal @a

execute store result score @s ttb_durab run data get entity @s SelectedItem.tag.ttb.durability
execute store result score @s ttb_durab_max run data get entity @s SelectedItem.tag.ttb.max_durability
execute if score @s ttb_relic_damage >= $threshold ttb_relic_damage if entity @s[predicate=ttb:entity/function/holding/staff] if score @s ttb_durab < @s ttb_durab_max run function ttb:item/staff/durability/recharge/bright_relic
