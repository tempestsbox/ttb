# called by world/structure/chunk

data modify storage ttb:temp x set from entity @s Pos[0]
data modify storage ttb:temp z set from entity @s Pos[2]

execute align xyz run summon area_effect_cloud ~ ~ ~ {Tags:["ttb_structure"]}
execute as @e[type=area_effect_cloud,distance=...1,limit=1] at @s run function ttb:world/structure/loop_spawns

data remove storage ttb:temp x
data remove storage ttb:temp z
