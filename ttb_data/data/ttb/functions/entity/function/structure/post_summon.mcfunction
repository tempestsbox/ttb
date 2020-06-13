execute if block ~ ~ ~ #ttb:command_block run setblock ~ ~ ~ air

execute align y run data modify entity @e[tag=ttb_entity_init,distance=0,limit=1] PersistenceRequired set value 1b
execute align y run tag @e[tag=ttb_entity_init,distance=0,limit=1] remove ttb_entity_init

data modify block ~ ~ ~ SpawnPotentials[0].Entity set from block ~ ~ ~ SpawnData
