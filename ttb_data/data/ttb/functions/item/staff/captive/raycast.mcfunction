#called by item/staff/captive/use // self

#audiovisuals
particle block cobblestone ~ ~ ~ 0 0 0 0 1 normal @a

#functionality
execute as @e[type=!player,type=!#ttb:sprite,distance=..1.5,limit=1] at @s run function ttb:item/staff/captive/create_box

execute if block ~ ~ ~ #ttb:air run scoreboard players set @s ttb_raycast_iter 101
execute if entity @e[type=!player,type=!#ttb:sprite,distance=..1.5,limit=1] run scoreboard players set @s ttb_raycast_iter 101

#recur
tp @s ^ ^ ^.1

scoreboard players add @s ttb_raycast_iter 1
execute if entity @s[scores={ttb_raycast_iter=..100}] at @s run function ttb:item/staff/captive/raycast
