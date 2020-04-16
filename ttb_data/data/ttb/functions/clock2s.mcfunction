#clock that runs every 2s

#entity clock
execute as @e at @s run function ttb:entity/clock2s

#reschedule
schedule function ttb:clock2s 2s replace
