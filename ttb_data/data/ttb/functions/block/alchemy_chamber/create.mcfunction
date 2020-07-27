# called by block/create_block

playsound block.stone.place block @a[distance=..16] ~ ~ ~ 1 1 1

# replace command block if it exists
execute if block ~ ~ ~ #ttb:command_block run setblock ~ ~ ~ air

# create
execute if block ~ ~ ~ #ttb:replace_on_creation run function ttb:block/alchemy_chamber/create_entity
loot replace entity @e[type=armor_stand,tag=ttb_alchemy_chamber,distance=...1,limit=1] armor.head loot ttb:items/alchemy_chamber

execute if block ~ ~ ~ barrel{CustomName:'{"translate":"block.ttb.alchemy_chamber"}'} run loot spawn ~ ~ ~ loot ttb:items/alchemy_chamber
fill ~ ~ ~ ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.alchemy_chamber"}'} replace #ttb:replace_on_creation
execute unless block ~ ~ ~ barrel{CustomName:'{"translate":"block.ttb.alchemy_chamber"}'} run loot spawn ~ ~ ~ loot ttb:items/alchemy_chamber
