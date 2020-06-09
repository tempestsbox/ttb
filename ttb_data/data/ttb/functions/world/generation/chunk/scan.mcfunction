# called by world/generation/chunk/generate

loot spawn ~ ~ ~ loot ttb:world/detect_biome
execute as @e[type=item,distance=..1,nbt={Item:{tag:{ttb:{biome:{}}}}},limit=1] run function ttb:world/generation/chunk/get_biomes
