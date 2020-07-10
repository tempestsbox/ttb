#called by tick

playsound block.stone.place block @a[distance=..16] ~ ~ ~ 1 1 1

#replace command block if it exists
execute if block ~ ~ ~ #ttb:command_block run setblock ~ ~ ~ air

#create
execute if block ~ ~ ~ spawner{SpawnData:{ArmorItems:[{tag:{ttb:{item:"amethyst_block"}}}]}} run loot spawn ~ ~ ~ loot ttb:items/amethyst_block
fill ~ ~ ~ ~ ~ ~ spawner{SpawnData:{id:armor_stand,ArmorItems:[{},{},{},{id:spawner,Count:1,tag:{ttb:{item:"amethyst_block"},CustomModelData:6830014}}]}} replace #ttb:replace_on_creation
execute if block ~ ~ ~ spawner{SpawnData:{ArmorItems:[{tag:{ttb:{item:"amethyst_block"}}}]}} run data merge block ~ ~ ~ {RequiredPlayerRange:0}
execute unless block ~ ~ ~ spawner{SpawnData:{ArmorItems:[{tag:{ttb:{item:"amethyst_block"}}}]}} run loot spawn ~ ~ ~ loot ttb:items/amethyst_block
