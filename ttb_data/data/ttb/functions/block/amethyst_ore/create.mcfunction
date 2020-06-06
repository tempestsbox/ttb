#called by tick

playsound block.stone.place block @a[distance=..16] ~ ~ ~ 1 1 1

#replace command block if it exists
execute if block ~ ~ ~ #ttb:command_block run setblock ~ ~ ~ air

#create
execute if block ~ ~ ~ spawner{SpawnData:{ArmorItems:[{tag:{ttb:{item:"amethyst_ore"}}}]}} run loot spawn ~ ~ ~ loot ttb:items/amethyst_ore
fill ~ ~ ~ ~ ~ ~ spawner{SpawnData:{id:armor_stand,ArmorItems:[{},{},{},{id:spawner,Count:1,tag:{ttb:{item:"amethyst_ore"},CustomModelData:6830001}}]}} replace #ttb:replace_on_creation
execute if block ~ ~ ~ spawner{SpawnData:{ArmorItems:[{tag:{ttb:{item:"amethyst_ore"}}}]}} run data merge block ~ ~ ~ {RequiredPlayerRange:0}
execute unless block ~ ~ ~ spawner{SpawnData:{ArmorItems:[{tag:{ttb:{item:"amethyst_ore"}}}]}} run loot spawn ~ ~ ~ loot ttb:items/amethyst_ore
