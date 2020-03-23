#called by item/staff/ether/spectator_effects

#audiovisuals
playsound block.end_portal_frame.fill player @a[distance=..16] ~ ~ ~ 1 2 1
playsound block.end_portal_frame.fill player @a[distance=..16] ~ ~ ~ 1 1 1
playsound block.end_portal_frame.fill player @a[distance=..16] ~ ~ ~ 1 0 1

playsound entity.ender_dragon.hurt player @a[distance=..16] ~ ~ ~ 2 0.5 1

#functionality
gamemode survival @s
scoreboard players reset @s ttb_ether_specmo
