#called by item/staff/captive/use

fill ~2 ~-1 ~-2 ~2 ~2 ~2 cobblestone keep
fill ~-2 ~-1 ~-2 ~-2 ~2 ~2 cobblestone keep
fill ~-2 ~-1 ~2 ~2 ~2 ~2 cobblestone keep
fill ~-2 ~-1 ~-2 ~2 ~2 ~-2 cobblestone keep
fill ~-2 ~2 ~-2 ~2 ~2 ~2 cobblestone keep
fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 cobblestone keep
execute if entity @s[type=wither] run fill ~-2 ~2 ~-2 ~2 ~2 ~2 air destroy

particle block cobblestone ~ ~ ~ 2 2 2 .01 650 normal @a
