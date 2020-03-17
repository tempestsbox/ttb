#@s - vulcaanium ore create stand
#called by tick

#kill creation stand
kill @s[type=!player]

#create titanium plating
setblock ~ ~ ~ spawner{SpawnData:{id:armor_stand,ArmorItems:[{},{},{},{id:spawner,Count:1,tag:{ttb:{item:"vulcaanium_ore"},CustomModelData:6830002}}]}} keep
execute if block ~ ~ ~ spawner{SpawnData:{ArmorItems:[{tag:{ttb:{item:"vulcaanium_ore"}}}]}} run data merge block ~ ~ ~ {RequiredPlayerRange:0}
execute unless block ~ ~ ~ spawner{SpawnData:{ArmorItems:[{tag:{ttb:{item:"vulcaanium_ore"}}}]}} run loot spawn ~ ~ ~ loot ttb:items/vulcaanium_ore
