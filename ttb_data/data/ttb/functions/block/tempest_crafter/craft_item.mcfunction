function ttb:block/tempest_crafter/gui/remove_recipe
loot replace block ~ ~ ~ container.16 loot ttb:items/tempest_crafter
data modify block ~ ~ ~ Items[{Slot:16b}].tag.ttb.crafting.multiplier set value 1
