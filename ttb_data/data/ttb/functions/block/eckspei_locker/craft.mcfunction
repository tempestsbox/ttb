# called by block/tempest_crafter/recipe_check

loot replace block ~ ~ ~ container.16 loot ttb:items/eckspei_locker
data modify block ~ ~ ~ Items[{Slot:16b}].tag.ttb.crafting.multiplier set value 1
function ttb:block/tempest_crafter/gui/remove_items
