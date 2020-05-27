#attempt to spawn a structure based on the seed
#called by world/generation/chunk/generate

#spread markers
spreadplayers ~8.5 ~8.5 0 1 false @s
execute store result score world_gen_y ttb_data run data get entity @s Pos[1]
tp @s ~8.5 ~ ~8.5
execute store result entity @s Pos[1] double 1 run scoreboard players get world_gen_y ttb_data
execute at @s if block ~ ~-1 ~ snow run tp @s ~ ~-1 ~

#if in odd environment, mark invalid
tag @s add ttb_structure_invalid
execute at @s unless block ~ ~-1 ~ #leaves unless block ~ ~-2 ~ #leaves unless block ~ ~-2 ~ water run tag @s remove ttb_structure_invalid

#spawn structures
# --> entity/area_effect_cloud/tick -> world/structure/function/check_structure
