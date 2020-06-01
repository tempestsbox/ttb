# called by item/staff/shatter/use_right

# summon raycast entity
summon area_effect_cloud ~ ~ ~ {Tags:["ttb_entity","ttb_shatter_staff_raycast"],CustomName:'"ttb_shatter_staff_raycast"',Duration:160}
# copy rotation
data modify entity @e[type=area_effect_cloud,tag=ttb_shatter_staff_raycast,distance=...1,limit=1] Rotation set from entity @s Rotation
