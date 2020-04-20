#called by block/tempite_stone/extract_amethyst/scan_slots

execute store result score tempite_stone_amethyst ttb_data run data get block ~ ~ ~ Items[{Slot:0b}].Count
scoreboard players remove tempite_stone_amethyst ttb_data 1
execute store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get tempite_stone_amethyst ttb_data
