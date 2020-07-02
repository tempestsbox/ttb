#called by entity/item_frame/clock2s

scoreboard players add @s ttb_tempite_insu 1

execute if score @s ttb_tempite_insu matches 1 run function ttb:block/tempite_insulator/initial_activate
execute if score @s ttb_tempite_insu matches 2 if block ~ ~ ~ command_block{CustomName:'{"translate":"block.ttb.tempite_stone"}'} run function ttb:block/tempite_insulator/tempite_stone/audiovisuals
execute if score @s ttb_tempite_insu matches 3.. if block ~ ~ ~ command_block{CustomName:'{"translate":"block.ttb.tempite_stone"}'} run function ttb:block/tempite_insulator/tempite_stone/activate
