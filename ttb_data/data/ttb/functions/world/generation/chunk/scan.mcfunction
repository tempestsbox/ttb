#called by world/generation/chunk/generate

loot spawn ~ ~ ~ loot ttb:world/generation/get_biome
execute as @e[type=item,distance=0,limit=1] run function ttb:world/generation/chunk/get_biome
