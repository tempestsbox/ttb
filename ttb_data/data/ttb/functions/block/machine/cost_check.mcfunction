#called by block/machine/get_power

particle dust 0.0862 0.8509 0.8117 1 ~ ~ ~ .25 .25 .25 0 100 normal @a

tag @e[type=armor_stand,tag=ttb_tempite_stone,distance=..16,scores={ttb_tempite_amnt=1..},sort=nearest,limit=1] add ttb_tempite_stone_nearest
execute if data block ~ ~ ~ Items[{tag:{ttb:{item:"mysterious_crystal"}}}] run function ttb:block/machine/mysterious

execute if entity @s[tag=ttb_breaker] run function ttb:block/breaker/cost/check
execute if entity @s[tag=ttb_acronite_cage] run function ttb:block/acronite_cage/cost/check
execute if entity @s[tag=ttb_eckspei_locker] run function ttb:block/eckspei_locker/cost/check

tag @e[type=armor_stand,tag=ttb_tempite_stone] remove ttb_tempite_stone_nearest
tag @s remove ttb_machine_mysterious
