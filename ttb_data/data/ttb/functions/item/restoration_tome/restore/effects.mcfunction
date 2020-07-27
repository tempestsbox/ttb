# called by item/restoration_tome/restore/item || item/restoration_tome/restore/staff

playsound entity.zombie_villager.converted block @a[distance=..16] ~ ~ ~ 2 2 1
playsound entity.zombie_villager.converted block @a[distance=..16] ~ ~ ~ 2 0.5 1
particle dust 0.15 0.93 0.22 .25 ~ ~1 ~ .25 .25 .25 0 80 normal @a
