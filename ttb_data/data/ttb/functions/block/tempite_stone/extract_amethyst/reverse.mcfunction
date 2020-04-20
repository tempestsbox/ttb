#called by block/tempite_stone/extract_amethyst/scan_slots

loot insert ~ ~ ~ loot ttb:items/amethyst
scoreboard players operation @s ttb_tempite_amnt -= $amethyst ttb_tempite_amnt
