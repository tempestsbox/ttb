# called by world/generation/chunk/generate

execute if score snowy ttb_biome matches 1 run function ttb:world/generation/better_biomes/snowy
execute if score ocean ttb_biome matches 1 run function ttb:world/generation/better_biomes/ocean
execute if score desert ttb_biome matches 1 run function ttb:world/generation/better_biomes/desert
execute if score badlands ttb_biome matches 1 run function ttb:world/generation/better_biomes/badlands
execute if score lush ttb_biome matches 1 unless score forest ttb_biome matches 1 run function ttb:world/generation/better_biomes/jungle
execute if score swamp ttb_biome matches 1 run function ttb:world/generation/better_biomes/swamp
