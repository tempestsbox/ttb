#called by item/staff/check_staff

playsound block.iron_door.open voice @a[distance=..16] ~ ~ ~ 2 0.5 1
playsound block.glass.break player @a[distance=..16] ~ ~ ~ 2 2 1
playsound block.glass.break player @a[distance=..16] ~ ~ ~ 2 1.75 1
playsound block.glass.break player @a[distance=..16] ~ ~ ~ 2 1.5 1
particle block packed_ice ~ ~1 ~ 2 0.5 2 0.01 250 normal @a
particle block ice ~ ~1 ~ 2 0.5 2 0.01 250 normal @a
execute at @e[type=!#ttb:item/staff/refrigerant/no_target,distance=..6] run fill ~ ~ ~ ~ ~1 ~ ice keep

effect give @e[type=!#ttb:item/staff/refrigerant/no_target,distance=..6] slowness 3 10
fill ~-6 ~-6 ~-6 ~6 ~4 ~6 ice replace water
fill ~-6 ~-4 ~-6 ~6 ~4 ~6 cobblestone replace magma_block
fill ~-6 ~-4 ~-6 ~6 ~4 ~6 magma_block replace lava
fill ~-2 ~ ~-2 ~2 ~ ~2 snow keep

#depletion
execute in overworld positioned 29999984 255 29999984 run function ttb:item/staff/durability/update
