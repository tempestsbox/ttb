#called by block/tempest_crafter/recipe_check

function ttb:block/tempest_crafter/gui/remove_items
loot replace block ~ ~ ~ container.16 loot ttb:items/bright_relic
data modify block ~ ~ ~ Items[{Slot:16b}].tag.ttb.crafting.multiplier set value 1
