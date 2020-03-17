#armor stand tick
#@s - armor stand
#called by tick

data merge entity @s[tag=ttb_fire_stand] {Fire:17s}

execute if entity @s[tag=ttb_tempest_crafter] run function ttb:block/tempest_crafter/tick
