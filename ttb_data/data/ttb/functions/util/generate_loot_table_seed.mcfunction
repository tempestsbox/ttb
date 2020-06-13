execute unless entity @s unless entity @e[type=area_effect_cloud,tag=ttb_temp,tag=init,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["ttb_temp","init"],CustomName:'"ttb_temp"'}
execute if entity @s unless entity @e[type=area_effect_cloud,tag=ttb_temp,tag=init,limit=1] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ttb_temp","init"],CustomName:'"ttb_temp"'}
execute as @e[type=area_effect_cloud,tag=ttb_temp,tag=init,limit=1] run function ttb:util/generate_loot_table_seed_post
