#called by world/generation/chunk/generate

#structure type get
summon area_effect_cloud ~ ~ ~ {Tags:["ttb_temp"],CustomName:'"ttb_temp"'}
execute as @e[type=area_effect_cloud,tag=ttb_temp,distance=...1,limit=1] positioned 29999984 253 29999984 run function ttb:world/structure/function/check_spawn_post

#structure type check
execute if data storage ttb:world structure.get_spawn_result[0].id run function ttb:world/structure/function/summon_structure_marker

data remove storage ttb:world structure.get_spawn_result
