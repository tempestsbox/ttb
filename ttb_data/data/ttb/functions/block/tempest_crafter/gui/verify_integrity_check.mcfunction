# called by block/tempest_crafter/tick

tag @s add ttb_gui_verify_integrity
execute unless entity @e[type=#ttb:block/gui/verify_integrity,distance=..8,limit=1] unless block ~ ~-1 ~ #ttb:block/gui/verify_integrity run tag @s remove ttb_gui_verify_integrity
execute if entity @s[tag=ttb_gui_verify_integrity] run function ttb:block/tempest_crafter/gui/verify_integrity
