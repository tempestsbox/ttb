# called by item/staff/shatter/raycast_loop

execute as @e[type=!player,type=!#ttb:sprite,type=!ender_dragon,dx=0,sort=nearest,limit=1] at @s run function ttb:item/staff/shatter/entity_effects
kill @s
