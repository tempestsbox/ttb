#called by block/tempite_stone/tick

#audiovisuals
playsound block.stone.break block @a[distance=..16] ~ ~ ~ 1 1 1
particle block stone ~ ~ ~ .25 .25 .25 0 64 normal @a
particle block cyan_terracotta ~ ~ ~ .25 .25 .25 0 32 normal @a

#reimburse items
execute if score @s ttb_tempite_amnt matches 1.. align xyz positioned ~.5 ~ ~.5 run function ttb:block/tempite_stone/reimburse_items

#kill entities
kill @s[type=!player]
