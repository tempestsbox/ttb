# called by block/create_block

playsound block.stone.place block @a[distance=..16] ~ ~ ~ 1 1 1

# replace command block if it exists
execute if block ~ ~ ~ #ttb:command_block run setblock ~ ~ ~ air

# create
execute if block ~ ~ ~ #ttb:replace_on_creation run function ttb:block/growth_aura/create_entity
loot replace entity @e[type=armor_stand,tag=ttb_growth_aura,distance=...1,limit=1] armor.head loot ttb:items/growth_aura

execute if block ~ ~ ~ barrel{CustomName:'{"translate":"block.ttb.growth_aura"}'} run loot spawn ~ ~ ~ loot ttb:items/growth_aura
fill ~ ~ ~ ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.growth_aura"}'} replace #ttb:replace_on_creation
execute unless block ~ ~ ~ barrel{CustomName:'{"translate":"block.ttb.growth_aura"}'} run loot spawn ~ ~ ~ loot ttb:items/growth_aura
execute if block ~ ~ ~ barrel{CustomName:'{"translate":"block.ttb.growth_aura"}'} run data modify block ~ ~ ~ Items set from storage ttb:block machine.Items
