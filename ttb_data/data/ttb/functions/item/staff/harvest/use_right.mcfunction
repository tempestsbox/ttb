#called by item/staff/use_right

function ttb:item/staff/harvest/audiovisuals

# regress
effect give @s[level=..4,gamemode=!creative,gamemode=!spectator] instant_damage 10 1
tellraw @s[level=..4,gamemode=!creative,gamemode=!spectator] {"translate":"item.ttb.harvest_staff.regress.took_lifeforce","color":"dark_red","italic":true}

xp add @s[gamemode=!creative,gamemode=!spectator] -5 levels

execute as @e[type=#ttb:item/staff/harvest/regress,distance=..6,sort=random,limit=3] at @s run function ttb:item/staff/harvest/regress/get_entity
