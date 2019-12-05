#@s - tempest crafter summon stand
#called by entity/item_frame/create_custom_block

#kill summon stand
kill @s[type=!player]

#create tempest_crafter
setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.ttb.tempest_crafter"}'} keep
execute unless block ~ ~ ~ dropper{CustomName:'{"translate":"block.ttb.tempest_crafter"}'} run loot spawn ~ ~ ~ loot ttb:items/tempest_crafter
summon armor_stand ~ ~ ~ {Tags:["ttb_entity","ttb_fire_stand","ttb_crafter","ttb_tempest_crafter"],NoGravity:1,Silent:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:'{"translate":"block.ttb.tempest_crafter"}',Fire:17}
loot replace entity @e[type=armor_stand,tag=ttb_tempest_crafter,distance=...1,sort=nearest,limit=1] armor.head loot ttb:items/tempest_crafter
