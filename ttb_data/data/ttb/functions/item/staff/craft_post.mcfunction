#called by item/staff/craft

#audiovisuals
playsound entity.zombie_villager.converted player @a[distance=..16] ~ ~ ~ 1 2 1
playsound entity.zombie_villager.converted player @a[distance=..16] ~ ~ ~ 1 0 1

#functionality
data remove block ~ ~ ~ Items[{Slot:9b}]
function ttb:block/tempest_crafter/gui/subtract_items
