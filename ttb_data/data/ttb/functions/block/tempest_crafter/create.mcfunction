#@s - tempest crafter summon stand
#called by entity/item_frame/create_custom_block

#kill summon stand
kill @s[type=!player]

#create tempest_crafter
setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.ttb.tempest_crafter"}'} keep
execute unless block ~ ~ ~ dropper{CustomName:'{"translate":"block.ttb.tempest_crafter"}'} run loot spawn ~ ~ ~ loot ttb:items/tempest_crafter
summon armor_stand ~ ~ ~ {Tags:["ttb_entity","ttb_fire_stand","ttb_crafter","ttb_tempest_crafter"],NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,CustomNameVisible:0b,CustomName:'{"translate":"block.ttb.tempest_crafter"}',Fire:17s}
loot replace entity @e[type=armor_stand,tag=ttb_tempest_crafter,distance=...1,sort=nearest,limit=1] armor.head loot ttb:items/tempest_crafter
