#called by block/create_block

playsound block.stone.place block @a[distance=..16] ~ ~ ~ 1 1 1

#replace command block if it exists
execute if block ~ ~ ~ #ttb:command_block run setblock ~ ~ ~ air

#create
execute if block ~ ~ ~ #ttb:block/replace_on_creation run summon armor_stand ~ ~ ~ {Tags:["ttb_entity","ttb_block","ttb_tempite_stone","ttb_fire_stand"],NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"translate":"block.ttb.tempite_stone"}',Fire:17s}
loot replace entity @e[type=armor_stand,tag=ttb_tempite_stone,distance=...1,limit=1] armor.head loot ttb:items/tempite_stone
scoreboard players set @e[type=armor_stand,tag=ttb_tempite_stone,distance=...1] ttb_tempite_amnt 0

execute if block ~ ~ ~ command_block{CustomName:'{"translate":"block.ttb.tempite_stone"}'} run loot spawn ~ ~ ~ loot ttb:items/tempite_stone
fill ~ ~ ~ ~ ~ ~ command_block[facing=up]{CustomName:'{"translate":"block.ttb.tempite_stone"}',TrackOutput:0b} replace #ttb:block/replace_on_creation
data modify block ~ ~ ~ Command set from storage ttb:block tempite_stone.Command
execute unless block ~ ~ ~ command_block{CustomName:'{"translate":"block.ttb.tempite_stone"}'} run loot spawn ~ ~ ~ loot ttb:items/tempite_stone
