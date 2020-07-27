# called by block/tempite_insulator/clock2s

execute unless block ~ ~ ~ command_block{CustomName:'{"translate":"block.ttb.tempite_stone"}'} unless block ~ ~ ~ #ttb:air unless block ~ ~ ~ #ttb:block/tempite_wire run function ttb:block/tempite_insulator/reject_block
execute if block ~ ~ ~ command_block{CustomName:'{"translate":"block.ttb.tempite_stone"}'} run function ttb:block/tempite_insulator/tempite_stone/audiovisuals
