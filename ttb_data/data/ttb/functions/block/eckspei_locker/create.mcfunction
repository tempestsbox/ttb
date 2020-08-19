# called by block/create_block

playsound block.stone.place block @a[distance=..16] ~ ~ ~ 1 1 1

# replace command block if it exists
execute if block ~ ~ ~ #ttb:command_block run setblock ~ ~ ~ air

# create
execute if block ~ ~ ~ #ttb:replace_on_creation run function ttb:block/eckspei_locker/create_entity
loot replace entity @e[type=armor_stand,tag=ttb_eckspei_locker,distance=...1,limit=1] armor.head loot ttb:items/eckspei_locker
scoreboard players set @e[type=armor_stand,tag=ttb_eckspei_locker,distance=...1,limit=1] ttb_ecks_loc_exp 0

execute if block ~ ~ ~ barrel{CustomName:'{"translate":"block.ttb.eckspei_locker"}'} run loot spawn ~ ~ ~ loot ttb:items/eckspei_locker
fill ~ ~ ~ ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.eckspei_locker"}'} replace #ttb:replace_on_creation
execute unless block ~ ~ ~ barrel{CustomName:'{"translate":"block.ttb.eckspei_locker"}'} run loot spawn ~ ~ ~ loot ttb:items/eckspei_locker
execute if block ~ ~ ~ barrel{CustomName:'{"translate":"block.ttb.eckspei_locker"}'} run data modify block ~ ~ ~ Items set from storage ttb:block machine.Items
