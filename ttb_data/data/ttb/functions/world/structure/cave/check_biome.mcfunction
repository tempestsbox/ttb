# called by world/generation/chunk/generate

execute if score snowy ttb_biome matches 1 run function ttb:world/structure/cave/snowy
execute if score ocean ttb_biome matches 1 run function ttb:world/structure/cave/ocean
execute if score desert ttb_biome matches 1 run function ttb:world/structure/cave/desert
execute if score badlands ttb_biome matches 1 run function ttb:world/structure/cave/badlands
execute if score lush ttb_biome matches 1 unless score forest ttb_biome matches 1 run function ttb:world/structure/cave/jungle
