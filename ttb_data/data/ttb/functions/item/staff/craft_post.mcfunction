#called by item/staff/craft

#audiovisuals
playsound entity.zombie_villager.converted player @a[distance=..16] ~ ~ ~ 1 2 1
playsound entity.zombie_villager.converted player @a[distance=..16] ~ ~ ~ 1 0 1

#functionality
function ttb:block/tempest_crafter/gui/remove_items
data remove block ~ ~ ~ Items[{Slot:9b}]
data modify block ~ ~ ~ Items[{Slot:16b}].tag.ttb.crafting.multiplier set value 1
