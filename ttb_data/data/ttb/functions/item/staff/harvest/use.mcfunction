#called by item/staff/check_staff

#audiovisuals
playsound entity.zombie_horse.hurt player @a[distance=..16] ~ ~ ~ 50 0.5 1
particle block magma_block ~ ~ ~ .5 .5 .5 .01 500 normal @a
particle flame ~ ~ ~ .5 .5 .5 1 500 normal @a

#functionality
effect give @s[level=..4,gamemode=!creative,gamemode=!spectator] instant_damage 10 1
tellraw @s[level=..4,gamemode=!creative,gamemode=!spectator] {"translate":"item.ttb.staff.harvest.regress.took_lifeforce","color":"dark_red","italic":true}

xp add @s[gamemode=!creative,gamemode=!spectator] -5 levels

execute as @e[type=#ttb:item/staff/harvest/regress,distance=..6] at @s run function ttb:item/staff/harvest/regress

#depletion
function ttb:item/staff/durability/update
