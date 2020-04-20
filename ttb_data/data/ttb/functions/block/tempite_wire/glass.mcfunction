#called by block/tempite_wire/color/compare_type

summon armor_stand ~ ~ ~ {Tags:["ttb_entity","ttb_tempite_wire","ttb_tempite_wire_glass_new"],Small:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:barrier,Count:1b,tag:{CustomModelData:6830014}}],CustomName:'"ttb_tempite_wire"'}

function ttb:block/tempite_wire/add_decay

tag @s add ttb_tempite_wire_glass
function ttb:block/tempite_wire/spread
tag @s remove ttb_tempite_wire_glass
