#called by block/create_block

playsound block.stone.place block @a[distance=..16] ~ ~ ~ 1 1 1

#replace command block if it exists
execute if block ~ ~ ~ #ttb:command_block run setblock ~ ~ ~ air

#create
execute if block ~ ~ ~ #ttb:block/replace_on_creation run function ttb:block/acronite_cage/create_entity
loot replace entity @e[type=armor_stand,tag=ttb_acronite_cage,distance=...1,limit=1] armor.head loot ttb:items/acronite_cage

execute if block ~ ~ ~ barrel{CustomName:'{"translate":"block.ttb.acronite_cage"}'} run loot spawn ~ ~ ~ loot ttb:items/acronite_cage
fill ~ ~ ~ ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.acronite_cage"}'} replace #ttb:block/replace_on_creation
execute unless block ~ ~ ~ barrel{CustomName:'{"translate":"block.ttb.acronite_cage"}'} run loot spawn ~ ~ ~ loot ttb:items/acronite_cage
