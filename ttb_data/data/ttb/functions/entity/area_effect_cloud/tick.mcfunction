#called by tick

execute if entity @s[tag=ttb_breaker_entity] unless block ~ ~ ~ #ttb:block/breaker/cannot_remove run function ttb:block/breaker/break_block

#world generation
## generate structures
execute if entity @s[tag=ttb_chunk,tag=ttb_chunk_generate] run function ttb:world/generation/chunk/generate
## spawn structures
execute if entity @s[tag=ttb_structure,tag=!ttb_structure_invalid] run function ttb:world/structure/function/check_spawn
