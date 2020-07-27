# called by block/tempite_stone/tick

execute positioned ~ ~1 ~ if block ~ ~ ~ hopper[enabled=true,facing=down]{Items:[{tag:{ttb:{tempite_energy:{}}}}]} run function ttb:block/tempite_stone/extract_energy_item/scan_slots
execute positioned ~1 ~ ~ if block ~ ~ ~ hopper[enabled=true,facing=west]{Items:[{tag:{ttb:{tempite_energy:{}}}}]} run function ttb:block/tempite_stone/extract_energy_item/scan_slots
execute positioned ~-1 ~ ~ if block ~ ~ ~ hopper[enabled=true,facing=east]{Items:[{tag:{ttb:{tempite_energy:{}}}}]} run function ttb:block/tempite_stone/extract_energy_item/scan_slots
execute positioned ~ ~ ~1 if block ~ ~ ~ hopper[enabled=true,facing=north]{Items:[{tag:{ttb:{tempite_energy:{}}}}]} run function ttb:block/tempite_stone/extract_energy_item/scan_slots
execute positioned ~ ~ ~-1 if block ~ ~ ~ hopper[enabled=true,facing=south]{Items:[{tag:{ttb:{tempite_energy:{}}}}]} run function ttb:block/tempite_stone/extract_energy_item/scan_slots
