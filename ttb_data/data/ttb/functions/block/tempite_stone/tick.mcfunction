#called by entity/armor_stand/tick

#removal
execute unless block ~ ~ ~ command_block[facing=up]{CustomName:'{"translate":"block.ttb.tempite_stone"}'} run function ttb:block/tempite_stone/remove

#trigger check
execute unless block ~ ~ ~ command_block{powered:1b} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6830004
