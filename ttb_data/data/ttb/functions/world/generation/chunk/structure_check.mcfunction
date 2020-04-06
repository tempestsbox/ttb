#attempt to spawn a structure based on the seed
#called by world/generation/chunk/generate

#spawn structure markers
# execute if score <biome_type> ttb_biome matches 1 if block ~ 1 ~ #ttb:world/structure/<structure>/trigger run summon area_effect_cloud ~ <~ if top-spreading, set otherwise> ~ {Tags:["ttb_entity","ttb_structure","ttb_structure_<structure>"<,"ttb_structure_top_spread"?>],CustomName:'"ttb_structure_<structure>"'}
#spread markers
spreadplayers ~8.5 ~8.5 0 1 false @e[type=area_effect_cloud,tag=ttb_structure,tag=ttb_structure_top_spread,distance=...5]

#spawn structures
# --> entity/area_effect_cloud/tick
