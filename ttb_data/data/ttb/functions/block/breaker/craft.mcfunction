function ttb:block/breaker/gui/remove_items
data remove block ~ ~ ~ Items[{Slot:9b}]
loot replace block ~ ~ ~ container.16 loot ttb:items/breaker
data modify block ~ ~ ~ Items[{Slot:16b}].tag.ttb.crafting.multiplier set value 1
