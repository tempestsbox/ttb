#called by item/staff/use_right

#audiovisuals
playsound block.end_portal_frame.fill player @a[distance=..16] ~ ~ ~ 1 1 1
playsound block.end_portal_frame.fill player @a[distance=..16] ~ ~ ~ 1 .5 1
playsound block.end_portal_frame.fill player @a[distance=..16] ~ ~ ~ 1 0 1
execute anchored eyes run particle ash ^ ^ ^ .5 .5 .5 0 700 normal @a
effect give @s invisibility 10

#functionality
execute store result score @s ttb_ether_gamemo run data get entity @s playerGameType
scoreboard players set @s ttb_ether_specmo 200
