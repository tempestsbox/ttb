#called by item/staff/check_staff

#audiovisuals
playsound entity.wither.shoot player @a[distance=..16] ~ ~ ~ 2 .5 .5
particle totem_of_undying ~ ~ ~ 1 1 1 .1 500 normal @a

#functionality
effect give @e[type=!player,type=!#ttb:undead,type=!#ttb:sprite,distance=..3] instant_damage 1 2
effect give @e[type=#ttb:undead,distance=..3] instant_health 1 2
effect give @s resistance 5 100 true
effect give @s levitation 1 15 true

#depletion
execute in overworld positioned 29999984 255 29999984 run function ttb:item/staff/durability/update
