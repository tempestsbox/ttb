#called by world/structure/check_spawn/snowy

execute if block ~ 30 ~ andesite run summon area_effect_cloud ~ ~ ~ {Tags:["ttb_entity","ttb_structure","ttb_structure_large_wooden_snow_dungeon","ttb_structure_top_spread"],CustomName:'"ttb_structure_large_wooden_snow_dungeon"'}

execute if entity @e[type=area_effect_cloud,tag=ttb_structure,limit=1] run tag @s add ttb_structure_bedrock_passed
