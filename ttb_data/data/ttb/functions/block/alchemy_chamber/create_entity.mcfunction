# called by block/alchemy_chamber/create

execute if score custom_block_rotation ttb_data matches 0 run summon armor_stand ~ ~ ~ {Tags:["ttb_entity","ttb_block","ttb_machine","ttb_alchemy_chamber","ttb_machine_powerable_tempite","ttb_block_directional","ttb_fire_stand"],NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"translate":"block.ttb.alchemy_chamber"}',Fire:17s}
execute if score custom_block_rotation ttb_data matches 90 run summon armor_stand ~ ~ ~ {Tags:["ttb_entity","ttb_block","ttb_machine","ttb_alchemy_chamber","ttb_machine_powerable_tempite","ttb_block_directional","ttb_fire_stand"],NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"translate":"block.ttb.alchemy_chamber"}',Fire:17s,Rotation:[90f,0f]}
execute if score custom_block_rotation ttb_data matches 180 run summon armor_stand ~ ~ ~ {Tags:["ttb_entity","ttb_block","ttb_machine","ttb_alchemy_chamber","ttb_machine_powerable_tempite","ttb_block_directional","ttb_fire_stand"],NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"translate":"block.ttb.alchemy_chamber"}',Fire:17s,Rotation:[180f,0f]}
execute if score custom_block_rotation ttb_data matches -90 run summon armor_stand ~ ~ ~ {Tags:["ttb_entity","ttb_block","ttb_machine","ttb_alchemy_chamber","ttb_machine_powerable_tempite","ttb_block_directional","ttb_fire_stand"],NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"translate":"block.ttb.alchemy_chamber"}',Fire:17s,Rotation:[-90f,0f]}
