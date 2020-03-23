#called by item/staff/check_staff

#audiovisuals
playsound entity.generic.extinguish_fire player @a[distance=..16] ~ ~ ~ 2 .5 1
particle cloud ~ ~ ~ 1 1 1 .1 250 force

#functionality
execute as @e[type=!player,type=!#ttb:sprite,distance=..6,limit=1] at @s run function ttb:item/staff/shatter/entity_effects

#depletion
scoreboard players operation @s[gamemode=!creative,gamemode=!spectator] ttb_mana_shatter -= $use ttb_mana_shatter
function ttb:item/staff/mana/report