#called by item/staff/check_staff

#audiovisuals
playsound entity.enderman.scream voice @a[distance=..16] ~ ~ ~ 2 2 1
playsound block.glass.break voice @a[distance=..16] ~ ~ ~ 2 0.5 1
particle falling_dust gold_block ~ ~1 ~ 2 0.5 2 1 250 normal @a
particle block gold_block ~ ~1 ~ 2 0.5 2 1 250 normal @a

#functionality
fill ~-4 ~ ~-4 ~4 ~2 ~4 air replace #ttb:item/staff/extraction/replace

#depletion
scoreboard players operation @s[gamemode=!creative,gamemode=!spectator] ttb_mana_extract -= $use ttb_mana_extract
function ttb:item/staff/mana/report
