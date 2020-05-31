# called by item/staff/refrigerant/use_..

playsound block.iron_door.open voice @a[distance=..16] ~ ~ ~ 2 0.5 1
playsound block.glass.break player @a[distance=..16] ~ ~ ~ 2 2 1
playsound block.glass.break player @a[distance=..16] ~ ~ ~ 2 1.75 1
playsound block.glass.break player @a[distance=..16] ~ ~ ~ 2 1.5 1
particle block packed_ice ~ ~1 ~ 2 0.5 2 0 250 normal @a
particle block ice ~ ~1 ~ 2 0.5 2 0 250 normal @a
