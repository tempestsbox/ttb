#called by entity/item_frame/clock2s

execute unless block ^ ^ ^-1 #ttb:block/tempite_wire run scoreboard players add @s ttb_tempite_insu 1

execute if score @s ttb_tempite_insu matches 1 run function ttb:block/tempite_insulator/tick_1
execute if score @s ttb_tempite_insu matches 2 if block ^ ^ ^-1 command_block{CustomName:'{"translate":"block.ttb.tempite_stone"}'} run function ttb:block/tempite_insulator/tick_2/tempite_stone
execute if score @s ttb_tempite_insu matches 3 if block ^ ^ ^-1 command_block{CustomName:'{"translate":"block.ttb.tempite_stone"}'} run function ttb:block/tempite_insulator/tick_3/tempite_stone
