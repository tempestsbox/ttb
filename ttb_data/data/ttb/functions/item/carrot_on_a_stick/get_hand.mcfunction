# called by entity/player/used_item/carrot_on_a_stick || entity/player/hurt_entity

data modify storage ttb:temp item_durability_update set from entity @s SelectedItem
execute unless data storage ttb:temp item_durability_update{id:'minecraft:carrot_on_a_stick'} run data modify storage ttb:temp item_durability_update set from entity @s Inventory[{Slot:-106b}]

# get current durability
execute store result score #durability ttb_data run data get storage ttb:temp item_durability_update.tag.ttb.durability
