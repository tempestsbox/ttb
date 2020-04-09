#called by block/tempite_wire/color/check

execute if entity @s[tag=ttb_tempite_wire_black] run summon armor_stand ~ ~ ~ {Tags:["ttb_entity","ttb_tempite_wire","ttb_tempite_wire_black"],Small:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:barrier,Count:1b,tag:{CustomModelData:6830013}}],CustomName:'"ttb_tempite_wire"'}
