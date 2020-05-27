#called by world/structure/function/check_spawn

summon area_effect_cloud ~ ~ ~ {Tags:["ttb_entity","ttb_structure"],CustomName:'"ttb_structure"'}

execute if data storage ttb:world structure.get_spawn_result[{id:'large_wooden_snow_dungeon'}] as @e[type=area_effect_cloud,tag=ttb_structure,distance=...1,limit=1] run function ttb:world/structure/large_wooden_snow_dungeon/summon_structure_marker
