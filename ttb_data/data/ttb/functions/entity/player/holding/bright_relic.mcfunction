#called by entity/player/clock16t

#recharge
execute if score @s ttb_relic_damage >= $threshold ttb_relic_damage run particle soul_fire_flame ~ ~ ~ 0 0 0 0.1 50 normal @a

data modify storage ttb:temp item_durability_update set from entity @s SelectedItem
execute store result score @s ttb_durab run data get storage ttb:temp item_durability_update.tag.ttb.durability
execute store result score @s ttb_durab_max run data get storage ttb:temp item_durability_update.tag.ttb.max_durability
execute if score @s ttb_relic_damage >= $threshold ttb_relic_damage if data storage ttb:temp item_durability_update{tag:{ttb:{item:'staff'}}} if score @s ttb_durab < @s ttb_durab_max run function ttb:item/staff/durability/recharge/bright_relic
data remove storage ttb:temp item_durability_update
