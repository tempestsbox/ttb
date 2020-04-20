#called by block/tempite_stone/tick

execute positioned ~ ~1 ~ if block ~ ~ ~ hopper[facing=down]{Items:[{tag:{ttb:{item:"amethyst"}}}]} run function ttb:block/tempite_stone/extract_amethyst/scan_slots
execute positioned ~1 ~ ~ if block ~ ~ ~ hopper[facing=west]{Items:[{tag:{ttb:{item:"amethyst"}}}]} run function ttb:block/tempite_stone/extract_amethyst/scan_slots
execute positioned ~-1 ~ ~ if block ~ ~ ~ hopper[facing=east]{Items:[{tag:{ttb:{item:"amethyst"}}}]} run function ttb:block/tempite_stone/extract_amethyst/scan_slots
execute positioned ~ ~ ~1 if block ~ ~ ~ hopper[facing=north]{Items:[{tag:{ttb:{item:"amethyst"}}}]} run function ttb:block/tempite_stone/extract_amethyst/scan_slots
execute positioned ~ ~ ~-1 if block ~ ~ ~ hopper[facing=south]{Items:[{tag:{ttb:{item:"amethyst"}}}]} run function ttb:block/tempite_stone/extract_amethyst/scan_slots
