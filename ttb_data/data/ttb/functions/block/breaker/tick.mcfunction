#called by entity/armor_stand/tick

#removal
execute unless block ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.breaker"}'} run function ttb:block/breaker/remove

#powered
# execute if entity @s[tag=ttb_machine_powered_tempite] run data modify entity @s Glowing set value 1b
tag @s remove ttb_machine_powered_tempite
