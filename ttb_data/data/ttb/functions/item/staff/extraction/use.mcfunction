#called by item/staff/check_staff

#audiovisuals
playsound entity.enderman.scream voice @a[distance=..16] ~ ~ ~ 2 2 1
playsound block.glass.break voice @a[distance=..16] ~ ~ ~ 2 0.5 1
particle falling_dust gold_block ~ ~2 ~ 1 .5 1 1 100 normal @a
particle block gold_block ~ ~2 ~ 1 .5 1 1 150 normal @a

#functionality
fill ~-2 ~ ~-2 ~2 ~2 ~2 air replace #ttb:item/staff/extraction/replace
fill ~-2 ~ ~-2 ~2 ~2 ~2 air replace #ttb:item/staff/extraction/replace_ore

#depletion
execute in overworld positioned 29999984 255 29999984 run function ttb:item/staff/durability/update
