# called by block/ratch_putty/accelerate_cooktime

playsound block.lava.extinguish block @a[distance=..16] ~ ~ ~ 1 2 1
playsound entity.slime.squish block @a[distance=..16] ~ ~ ~ 1 2 1

execute at @s run particle block orange_concrete ~.5 ~ ~.5 .2 .2 .2 0 10 normal @a
tag @s add ttb_remove
