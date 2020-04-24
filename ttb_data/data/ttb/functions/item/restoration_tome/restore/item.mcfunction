#called by item/restoration_tome/restore/item_check

function ttb:item/restoration_tome/restore/effects

data remove block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.restoration_tome.repair_item.tag.Damage
data remove block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.restoration_tome.repair_item.tag.RepairCost

execute store result score restoration_tome_item_tag_count ttb_data run data get block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.restoration_tome.repair_item.tag
execute if score restoration_tome_item_tag_count ttb_data matches ..1 run data remove block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.restoration_tome.repair_item.tag

replaceitem block ~ ~ ~ container.16 barrier{CustomModelData:6830001}
data modify block ~ ~ ~ Items[{Slot:16b}] set from block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.restoration_tome.repair_item

function ttb:block/tempest_crafter/gui/remove_items
