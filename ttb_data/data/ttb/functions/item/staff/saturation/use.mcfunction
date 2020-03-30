#called by item/staff/check_staff

#audiovisuals
playsound entity.witch.drink voice @a[distance=..16] ~ ~ ~ 2 0.5 1
playsound entity.witch.drink voice @a[distance=..16] ~ ~ ~ 2 0.6 1
playsound entity.witch.drink voice @a[distance=..16] ~ ~ ~ 2 0.7 1
particle block red_nether_bricks ~ ~ ~ 2 0 2 0.01 1000 normal @a

#functionality
effect give @s saturation 30 0

#depletion
function ttb:item/staff/durability/update
