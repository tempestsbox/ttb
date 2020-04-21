#called by block/machine/get_power

tag @e[type=armor_stand,tag=ttb_tempite_stone,distance=..16,scores={ttb_tempite_amnt=1..},sort=nearest,limit=1] add ttb_tempite_stone_nearest

execute if data block ~ ~ ~ Items[{tag:{ttb:{mysterious:1b}}}] run function ttb:block/machine/mysterious

execute if entity @s[tag=ttb_breaker] run function ttb:block/breaker/cost/check
# execute if entity @s[tag=ttb_acronite_cage] run function ttb:block/acronite_cage/cost/check

tag @e[type=armor_stand,tag=ttb_tempite_stone] remove ttb_tempite_stone_nearest
