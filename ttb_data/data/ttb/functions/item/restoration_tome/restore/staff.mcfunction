#called by item/restoration_tome/restore/staff_check

function ttb:item/restoration_tome/restore/effects

#update durability
forceload add 29999984 29999984
setblock 29999984 254 29999984 yellow_shulker_box{Items:[{Slot:0b,id:barrier,Count:1b,tag:{CustomModelData:6830001}}]}
data remove block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.restoration_tome.repair_item.Slot
data modify block 29999984 254 29999984 Items[{Slot:0b}] merge from block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.restoration_tome.repair_item
execute in overworld positioned 29999984 255 29999984 run function ttb:item/restoration_tome/restore/staff_update_durability

#post
loot replace block ~ ~ ~ container.16 1 mine 29999984 254 29999984 air{drop_contents:1b}
setblock 29999984 255 29999984 air
forceload remove 29999984 29999984

function ttb:block/tempest_crafter/gui/remove_items
