#called by block/tempest_crafter/recipe_check

data remove block ~ ~ ~ Items
loot replace block ~ ~ ~ container.8 loot ttb:items/dark_relic
data modify block ~ ~ ~ Items[{Slot:8b}].tag.ttb.crafting.multiplier set value 1
