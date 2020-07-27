# called by block/tempest_crafter/recipe_check

# no modifier
execute unless data block ~ ~ ~ Items[{Slot:9b}] run loot replace block ~ ~ ~ container.16 loot ttb:items/staff/crafting/random
# modifier
execute if data block ~ ~ ~ Items[{Slot:9b,Count:1b}] unless data block ~ ~ ~ Items[{Slot:9b}].tag run function ttb:item/staff/craft_modifier

# post
execute if data block ~ ~ ~ Items[{Slot:16b}].tag.ttb.staff run function ttb:item/staff/craft_post
