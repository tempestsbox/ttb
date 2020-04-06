#called by entity/area_effect_cloud/tick

# execute if entity @s[tag=ttb_structure_<structure>] run function ttb:world/structure/<structure>/spawn

#remove entity
tag @s[type=!player] add ttb_remove
