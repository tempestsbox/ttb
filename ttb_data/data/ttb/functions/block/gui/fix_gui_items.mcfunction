#called by block/<block>/gui/verify_integrity

#pre
execute in overworld run forceload add 29999984 29999984

#remove gui items
setblock 29999984 253 29999984 yellow_shulker_box
data modify block 29999984 253 29999984 Items set from block ~ ~ ~ Items
data remove block 29999984 253 29999984 Items[{tag:{ttb:{gui_item:1b}}}]
loot spawn ~ ~1 ~ mine 29999984 253 29999984 air{drop_contents:1b}

#reset gui
execute if entity @s[tag=ttb_tempest_crafter] run function ttb:block/tempest_crafter/gui/has_items_kick
execute if entity @s[tag=ttb_machine,tag=!ttb_amethyst_sunpad] run function ttb:block/machine/gui/has_items_kick
execute if entity @s[tag=ttb_amethyst_sunpad] run function ttb:block/amethyst_sunpad/gui/has_items_kick

function ttb:block/gui/clear_gui_items

#post
execute in overworld run forceload remove 29999984 29999984
