#area effect cloud tick
#@s - area effect cloud
#called by tick

#world generation
## generate structures
execute if entity @s[tag=ttb_chunk,tag=ttb_chunk_generate] run function ttb:world/generation/chunk/generate
## spawn structures
execute if entity @s[tag=ttb_structure] at @s unless block ~ ~-1 ~ #leaves run function ttb:world/generation/structure/check_spawn
