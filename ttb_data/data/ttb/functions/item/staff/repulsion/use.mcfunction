#called by item/staff/check_staff

#audiovisuals
playsound entity.wither.shoot player @a[distance=..16] ~ ~ ~ 2 .5 .5
particle totem_of_undying ~ ~ ~ 1 1 1 .1 500 normal @a

#functionality
effect give @s instant_health 15 255
effect give @s resistance 5 100 true
effect give @s levitation 1 15 true
effect give @e[type=player,distance=..3] instant_damage 1 0
effect give @e[type=!player,distance=..3] instant_damage 1 2
effect give @e[type=!player,distance=..3] instant_health 1 2

#depletion
scoreboard players operation @s[gamemode=!creative,gamemode=!spectator] ttb_mana_repulsi -= $use ttb_mana_repulsi
function ttb:item/staff/mana/report
