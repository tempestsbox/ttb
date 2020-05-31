# called by item/staff/get_hit_entity / self

# functionality
execute positioned ~-.5 ~-.5 ~-.5 run tag @e[type=!player,type=!#ttb:sprite,type=!ender_dragon,dx=0,nbt={HurtTime:10s},sort=nearest,limit=1] add ttb_hit_entity

execute positioned ~-.5 ~-.5 ~-.5 if entity @e[type=!player,type=!#ttb:sprite,dx=0,nbt={HurtTime:10s},sort=nearest,limit=1] run scoreboard players set @s ttb_raycast_iter 81

# recur
tp @s ^ ^ ^.1

scoreboard players add @s ttb_raycast_iter 1
execute if score @s ttb_raycast_iter matches ..80 at @s run function ttb:item/staff/get_hit_entity_loop
