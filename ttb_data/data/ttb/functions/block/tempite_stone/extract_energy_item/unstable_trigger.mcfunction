# called by block/tempite_stone/extract_energy_item/remove_item

# audiovisuals
playsound entity.slime.jump_small block @a[distance=..16] ~ ~ ~ 1 2 1
playsound entity.slime.jump_small block @a[distance=..16] ~ ~ ~ 1 0 1
particle dust 0.721 0.086 0.850 1 ~ ~ ~ .25 .25 .25 0 25 normal @a

# trigger
function ttb:block/tempite_stone/triggered
