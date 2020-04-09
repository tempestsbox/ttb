#armor stand tick
#@s - armor stand
#called by tick

data modify entity @s[tag=ttb_fire_stand] Fire set value 17s

execute if entity @s[tag=ttb_tempest_crafter] run function ttb:block/tempest_crafter/tick
execute if entity @s[tag=ttb_tempite_stone] run function ttb:block/tempite_stone/tick
execute if entity @s[tag=ttb_tempite_wire] run function ttb:block/tempite_wire/tick
