# called by item/staff/use_left

# summon raycast entity
summon area_effect_cloud ~ ~ ~ {Tags:["ttb_entity","ttb_get_hit_entity_raycast"],CustomName:'"ttb_get_hit_entity_raycast"'}
# copy rotation
data modify entity @e[type=area_effect_cloud,tag=ttb_get_hit_entity_raycast,distance=...1,limit=1] Rotation set from entity @s Rotation
# raycast
execute as @e[type=area_effect_cloud,tag=ttb_get_hit_entity_raycast,distance=...1,limit=1] at @s run function ttb:item/staff/get_hit_entity_loop
