#tick (20/s)
#@s - invalid
#called by #tick

recipe give @a *

#general entity ticks
execute as @e[type=item] at @s run function ttb:entity/item/tick
execute as @e[type=armor_stand] at @s run function ttb:entity/armor_stand/tick
