execute unless entity @e[type=area_effect_cloud,tag=ttb_temp,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["ttb_temp"],CustomName:'"ttb_temp"'}
execute as @e[type=area_effect_cloud,tag=ttb_temp,limit=1] run function ttb:util/generate_loot_table_seed_post
