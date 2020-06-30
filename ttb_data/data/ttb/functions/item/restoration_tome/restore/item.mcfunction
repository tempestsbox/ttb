#called by item/restoration_tome/restore/item_check

function ttb:item/restoration_tome/restore/effects

data remove storage ttb:temp item.restoration_tome.repair_item.tag.Damage
data remove storage ttb:temp item.restoration_tome.repair_item.tag.RepairCost

execute store result score restoration_tome_item_tag_count ttb_data run data get storage ttb:temp item.restoration_tome.repair_item.tag
execute if score restoration_tome_item_tag_count ttb_data matches 0 run data remove storage ttb:temp item.restoration_tome.repair_item.tag

replaceitem block ~ ~ ~ container.16 barrier{CustomModelData:6830001}
data modify block ~ ~ ~ Items[{Slot:16b}] set from storage ttb:temp item.restoration_tome.repair_item

data remove block ~ ~ ~ Items[{Slot:9b}]
function ttb:block/tempest_crafter/gui/remove_items
