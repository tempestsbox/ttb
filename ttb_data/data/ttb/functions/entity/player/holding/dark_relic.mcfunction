#called by entity/player/clock16t

#recharge
data modify storage ttb:temp item_durability_update set from entity @s SelectedItem
execute store result score @s ttb_durab run data get storage ttb:temp item_durability_update.tag.ttb.durability
execute store result score @s ttb_durab_max run data get storage ttb:temp item_durability_update.tag.ttb.max_durability
execute if data storage ttb:temp item_durability_update{tag:{ttb:{item:'staff'}}} if score @s ttb_durab < @s ttb_durab_max run function ttb:item/staff/durability/recharge/dark_relic
data remove storage ttb:temp item_durability_update
