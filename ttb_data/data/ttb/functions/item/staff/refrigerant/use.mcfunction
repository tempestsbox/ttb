#called by item/staff/check_staff

playsound block.iron_door.open voice @a[distance=..16] ~ ~ ~ 2 0.5 1
playsound block.glass.break player @a[distance=..16] ~ ~ ~ 2 2 1
playsound block.glass.break player @a[distance=..16] ~ ~ ~ 2 1.75 1
playsound block.glass.break player @a[distance=..16] ~ ~ ~ 2 1.5 1
particle block packed_ice ~ ~1 ~ 2 0.5 2 0.01 250 normal @a
particle block ice ~ ~1 ~ 2 0.5 2 0.01 250 normal @a
execute at @e[type=!armor_stand,distance=1..6] run fill ~ ~ ~ ~ ~1 ~ ice keep

effect give @e[distance=1..6] slowness 3 10
fill ~-6 ~-6 ~-6 ~6 ~4 ~6 ice replace water
fill ~-6 ~-4 ~-6 ~6 ~4 ~6 cobblestone replace magma_block
fill ~-6 ~-4 ~-6 ~6 ~4 ~6 magma_block replace lava
fill ~-2 ~-1 ~-2 ~2 ~1 ~2 snow keep

#depletion
scoreboard players operation @s[gamemode=!creative,gamemode=!spectator] ttb_mana_refrige -= $use ttb_mana_refrige
function ttb:item/staff/mana/report
