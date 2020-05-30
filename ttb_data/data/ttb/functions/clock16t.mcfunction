#clock that runs 16/s

execute as @a at @s run function ttb:entity/player/clock16t
execute as @e[type=item] at @s run function ttb:entity/item/clock16t

#reschedule
schedule function ttb:clock16t 16t replace
