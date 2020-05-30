summon area_effect_cloud ~ ~ ~ {Tags:["ttb_temp"],CustomName:'"ttb_temp"'}
execute as @e[type=area_effect_cloud,tag=ttb_temp,distance=...1,limit=1] positioned 29999984 253 29999984 run function ttb:world/structure/dungeon/get_room_post
