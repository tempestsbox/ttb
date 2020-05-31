#called by item/staff/ether/spectator_effects

#audiovisuals
playsound block.end_portal_frame.fill player @a[distance=..16] ~ ~ ~ 1 2 1
playsound block.end_portal_frame.fill player @a[distance=..16] ~ ~ ~ 1 1.5 1
playsound block.end_portal_frame.fill player @a[distance=..16] ~ ~ ~ 1 1 1

execute anchored eyes run particle ash ^ ^ ^ .5 .5 .5 0 700 normal @a

#functionality
gamemode survival @s[scores={ttb_ether_gamemo=0}]
gamemode creative @s[scores={ttb_ether_gamemo=1}]
gamemode adventure @s[scores={ttb_ether_gamemo=2}]
scoreboard players reset @s ttb_ether_specmo
