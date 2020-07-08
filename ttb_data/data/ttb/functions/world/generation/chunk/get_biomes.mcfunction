# called by world/generation/chunk/scan

execute if entity @s[nbt={Item:{tag:{ttb:{biome:{snowy:1b}}}}}] run scoreboard players set snowy ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{biome:{cold:1b}}}}}] run scoreboard players set cold ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{biome:{lush:1b}}}}}] run scoreboard players set lush ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{biome:{warm:1b}}}}}] run scoreboard players set warm ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{biome:{ocean:1b}}}}}] run scoreboard players set ocean ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{biome:{desert:1b}}}}}] run scoreboard players set desert ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{biome:{badlands:1b}}}}}] run scoreboard players set badlands ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{biome:{forest:1b}}}}}] run scoreboard players set forest ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{biome:{plains:1b}}}}}] run scoreboard players set plains ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{biome:{river:1b}}}}}] run scoreboard players set river ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{biome:{beach:1b}}}}}] run scoreboard players set beach ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{biome:{swamp:1b}}}}}] run scoreboard players set swamp ttb_biome 1
execute if entity @s[nbt={Item:{tag:{ttb:{biome:{border:1b}}}}}] run scoreboard players set border ttb_biome 1

kill @s
