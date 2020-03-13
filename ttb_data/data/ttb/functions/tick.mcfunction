#tick (20/s)
#@s - invalid
#called by #tick

#general entity ticks
execute as @e[type=item] at @s run function ttb:entity/item/tick
execute as @e[type=armor_stand] at @s run function ttb:entity/armor_stand/tick
execute as @a at @s run function ttb:entity/player/tick
