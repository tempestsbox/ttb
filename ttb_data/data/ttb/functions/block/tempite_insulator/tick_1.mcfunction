#called by block/tempite_insulator/clock2s

execute unless block ^ ^ ^-1 command_block{CustomName:'{"translate":"block.ttb.tempite_stone"}'} unless block ^ ^ ^-1 #ttb:air unless block ^ ^ ^-1 #ttb:block/tempite_wire run function ttb:block/tempite_insulator/tick_1/normal
execute if block ^ ^ ^-1 command_block{CustomName:'{"translate":"block.ttb.tempite_stone"}'} run function ttb:block/tempite_insulator/tick_1/tempite_stone
