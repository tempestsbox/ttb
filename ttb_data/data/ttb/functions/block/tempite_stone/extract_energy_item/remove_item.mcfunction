# called by block/tempite_stone/extract_energy_item/scan_slots

execute store result score #first_slot_number ttb_tempite_amnt run data get storage ttb:temp block.tempite_stone.energy_item.Slot
execute store result storage ttb:temp block.tempite_stone.energy_item.Count int 1 run data get storage ttb:temp block.tempite_stone.energy_item.Count 0.9999999999

execute if score #first_slot_number ttb_tempite_amnt matches 0 run data modify block ~ ~ ~ Items[{Slot:0b}] set from storage ttb:temp block.tempite_stone.energy_item{Slot:0b}
execute if score #first_slot_number ttb_tempite_amnt matches 1 run data modify block ~ ~ ~ Items[{Slot:1b}] set from storage ttb:temp block.tempite_stone.energy_item{Slot:1b}
execute if score #first_slot_number ttb_tempite_amnt matches 2 run data modify block ~ ~ ~ Items[{Slot:2b}] set from storage ttb:temp block.tempite_stone.energy_item{Slot:2b}
execute if score #first_slot_number ttb_tempite_amnt matches 3 run data modify block ~ ~ ~ Items[{Slot:3b}] set from storage ttb:temp block.tempite_stone.energy_item{Slot:3b}
execute if score #first_slot_number ttb_tempite_amnt matches 4 run data modify block ~ ~ ~ Items[{Slot:4b}] set from storage ttb:temp block.tempite_stone.energy_item{Slot:4b}

execute if data storage ttb:temp block.tempite_stone.energy_item{tag:{ttb:{tempite_energy:{unstable:1b}}}} if predicate ttb:block/tempite_stone/extract_energy_item/unstable_trigger at @s run function ttb:block/tempite_stone/extract_energy_item/unstable_trigger

scoreboard players operation @s ttb_tempite_amnt = #temp ttb_tempite_amnt
scoreboard players operation @s ttb_machine_cool = $hopper ttb_machine_cool
