# called by item/staff/ether/spectator_effects

# audiovisuals
playsound block.end_portal_frame.fill player @a[distance=..16] ~ ~ ~ 1 2 1
playsound block.end_portal_frame.fill player @a[distance=..16] ~ ~ ~ 1 1.5 1
playsound block.end_portal_frame.fill player @a[distance=..16] ~ ~ ~ 1 1 1

execute anchored eyes run particle ash ^ ^ ^ .5 .5 .5 0 700 normal @a

# reset gamemode
execute store result score #previous_gamemode ttb_data run data get entity @s previousPlayerGameType
execute if score #previous_gamemode ttb_data matches 0 run gamemode survival @s
execute if score #previous_gamemode ttb_data matches 1 run gamemode creative @s
execute if score #previous_gamemode ttb_data matches 2 run gamemode adventure @s

effect clear @s invisibility

# end ticker
scoreboard players reset @s ttb_ether_specmo
