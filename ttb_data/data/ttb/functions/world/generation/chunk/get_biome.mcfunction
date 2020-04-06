#called by world/generation/chunk/scan

execute if entity @s[nbt={Item:{tag:{ttb:{world:{generation:{biome:{snowy:1b}}}}}}}] run scoreboard players set snowy ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{world:{generation:{biome:{cold:1b}}}}}}}] run scoreboard players set cold ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{world:{generation:{biome:{wooded:1b}}}}}}}] run scoreboard players set wooded ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{world:{generation:{biome:{the_end:1b}}}}}}}] run scoreboard players set the_end ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{world:{generation:{biome:{jungle:1b}}}}}}}] run scoreboard players set jungle ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{world:{generation:{biome:{swamp:1b}}}}}}}] run scoreboard players set swamp ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{world:{generation:{biome:{warm:1b}}}}}}}] run scoreboard players set warm ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{world:{generation:{biome:{ocean:1b}}}}}}}] run scoreboard players set ocean ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{world:{generation:{biome:{desert:1b}}}}}}}] run scoreboard players set desert ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{world:{generation:{biome:{badlands:1b}}}}}}}] run scoreboard players set badlands ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{world:{generation:{biome:{forest:1b}}}}}}}] run scoreboard players set forest ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{world:{generation:{biome:{plains:1b}}}}}}}] run scoreboard players set plains ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{world:{generation:{biome:{beach:1b}}}}}}}] run scoreboard players set beach ttb_biome 1

tag @s[type=!player] add ttb_remove
