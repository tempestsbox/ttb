# called by block/tempite_stone/extract_energy_item/check_adjacent

data remove storage ttb:temp block.tempite_stone.energy_item
data modify storage ttb:temp block.tempite_stone.energy_item set from block ~ ~ ~ Items[{Slot:0b}]
execute unless data storage ttb:temp block.tempite_stone.energy_item{tag:{ttb:{tempite_energy:{}}}} run data modify storage ttb:temp block.tempite_stone.energy_item set from block ~ ~ ~ Items[{Slot:1b}]
execute unless data storage ttb:temp block.tempite_stone.energy_item{tag:{ttb:{tempite_energy:{}}}} run data modify storage ttb:temp block.tempite_stone.energy_item set from block ~ ~ ~ Items[{Slot:2b}]
execute unless data storage ttb:temp block.tempite_stone.energy_item{tag:{ttb:{tempite_energy:{}}}} run data modify storage ttb:temp block.tempite_stone.energy_item set from block ~ ~ ~ Items[{Slot:3b}]
execute unless data storage ttb:temp block.tempite_stone.energy_item{tag:{ttb:{tempite_energy:{}}}} run data modify storage ttb:temp block.tempite_stone.energy_item set from block ~ ~ ~ Items[{Slot:4b}]

execute store result score #tempite_to_add ttb_tempite_amnt run data get storage ttb:temp block.tempite_stone.energy_item.tag.ttb.tempite_energy.amount

scoreboard players operation #temp ttb_tempite_amnt = @s ttb_tempite_amnt
scoreboard players operation #temp ttb_tempite_amnt += #tempite_to_add ttb_tempite_amnt

execute unless score #temp ttb_tempite_amnt > $max ttb_tempite_amnt run function ttb:block/tempite_stone/extract_energy_item/remove_item
