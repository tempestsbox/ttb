# called by entity/clock16t

data modify entity @s[tag=ttb_fire_stand] Fire set value 17s

execute if entity @s[tag=ttb_tempest_crafter] run function ttb:block/tempest_crafter/clock16t
execute if entity @s[tag=ttb_eckspei_locker] run function ttb:block/eckspei_locker/clock16t
