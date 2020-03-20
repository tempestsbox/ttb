#clock that runs 16/s

execute as @e[type=item] at @s run function ttb:entity/item/clock16

#reschedule
schedule function ttb:clock16 16t replace
