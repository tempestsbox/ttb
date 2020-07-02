#called by block/create_block

playsound block.stone.place block @a[distance=..16] ~ ~ ~ 1 1 1

advancement grant @a[distance=..5] only ttb:story/root

#replace command block if it exists
execute if block ~ ~ ~ #ttb:command_block run setblock ~ ~ ~ air

#create
execute if block ~ ~ ~ #ttb:replace_on_creation run summon armor_stand ~ ~ ~ {Tags:["ttb_entity","ttb_block","ttb_crafter","ttb_tempest_crafter","ttb_fire_stand"],NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"translate":"block.ttb.tempest_crafter"}',Fire:17s}
loot replace entity @e[type=armor_stand,tag=ttb_tempest_crafter,distance=...1,limit=1] armor.head loot ttb:items/tempest_crafter

execute if block ~ ~ ~ barrel{CustomName:'{"translate":"block.ttb.tempest_crafter"}'} run loot spawn ~ ~ ~ loot ttb:items/tempest_crafter
fill ~ ~ ~ ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.tempest_crafter"}'} replace #ttb:replace_on_creation
execute unless block ~ ~ ~ barrel{CustomName:'{"translate":"block.ttb.tempest_crafter"}'} run loot spawn ~ ~ ~ loot ttb:items/tempest_crafter
