#called by block/tempite_stone/tick

execute positioned ~ ~1 ~ if block ~ ~ ~ hopper[enabled=true,facing=down]{Items:[{tag:{ttb:{item:"amethyst"}}}]} run function ttb:block/tempite_stone/extract_amethyst/scan_slots
execute positioned ~1 ~ ~ if block ~ ~ ~ hopper[enabled=true,facing=west]{Items:[{tag:{ttb:{item:"amethyst"}}}]} run function ttb:block/tempite_stone/extract_amethyst/scan_slots
execute positioned ~-1 ~ ~ if block ~ ~ ~ hopper[enabled=true,facing=east]{Items:[{tag:{ttb:{item:"amethyst"}}}]} run function ttb:block/tempite_stone/extract_amethyst/scan_slots
execute positioned ~ ~ ~1 if block ~ ~ ~ hopper[enabled=true,facing=north]{Items:[{tag:{ttb:{item:"amethyst"}}}]} run function ttb:block/tempite_stone/extract_amethyst/scan_slots
execute positioned ~ ~ ~-1 if block ~ ~ ~ hopper[enabled=true,facing=south]{Items:[{tag:{ttb:{item:"amethyst"}}}]} run function ttb:block/tempite_stone/extract_amethyst/scan_slots
