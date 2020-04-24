#called by entity/armor_stand/tick

#removal
execute unless block ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.tempest_crafter"}'} run function ttb:block/tempest_crafter/remove

#gui
execute if block ~ ~ ~ barrel run function ttb:block/tempest_crafter/gui/verify_integrity

tag @s add ttb_gui_clear_items
execute unless block ~ ~-1 ~ hopper positioned ~ ~-1 ~ align xyz unless entity @e[type=hopper_minecart,dx=0,dy=1,dz=0] run tag @s remove ttb_gui_clear_items
execute if entity @s[tag=ttb_gui_clear_items] run function ttb:block/gui/clear_gui_items

#recipes
execute unless data block ~ ~ ~ Items[{Slot:16b}] run function ttb:block/tempest_crafter/recipe_validity_check
