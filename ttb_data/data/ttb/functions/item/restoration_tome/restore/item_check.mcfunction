#called by block/tempest_crafter/recipe_check

data modify block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.restoration_tome.repair_item set from block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[0]
execute unless data block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.restoration_tome.repair_item.tag.Damage run data modify block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.restoration_tome.repair_item set from block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[1]

data modify block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.restoration_tome.repair_item.Slot set value 16b

execute store result score restoration_tome_item_damage ttb_data run data get block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.restoration_tome.repair_item.tag.Damage
execute if score restoration_tome_item_damage ttb_data matches 1.. run function ttb:item/restoration_tome/restore/item
