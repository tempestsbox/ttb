#called by block/breaker/tick

tag @s add ttb_gui_disintegral
execute if data block ~ ~ ~ Items[{Slot:0b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:1b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:2b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:5b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:8b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:9b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:11b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:14b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:17b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:18b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:19b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:20b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:23b,tag:{ttb:{gui_item:1b}}}] if data block ~ ~ ~ Items[{Slot:26b,tag:{ttb:{gui_item:1b}}}] run tag @s remove ttb_gui_disintegral
execute if entity @s[tag=ttb_gui_disintegral] run function ttb:block/gui/fix_gui_items
