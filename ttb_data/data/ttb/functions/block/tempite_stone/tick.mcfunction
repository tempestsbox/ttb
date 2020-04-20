#called by entity/armor_stand/tick

#amethyst
execute unless score @s ttb_machine_cool matches 1.. unless score @s ttb_tempite_amnt >= $max ttb_tempite_amnt run function ttb:block/tempite_stone/extract_amethyst/check_adjacent

#removal
execute unless block ~ ~ ~ command_block[facing=up]{CustomName:'{"translate":"block.ttb.tempite_stone"}'} run function ttb:block/tempite_stone/remove

#model
scoreboard players set @s ttb_model_cmd 6

execute unless block ~ ~ ~ command_block{powered:1b} unless score @s ttb_tempite_amnt matches 1.. run scoreboard players set @s ttb_model_cmd 4
execute if block ~ ~ ~ command_block{powered:1b} unless score @s ttb_tempite_amnt matches 1.. run scoreboard players set @s ttb_model_cmd 5
execute unless block ~ ~ ~ command_block{powered:1b} if score @s ttb_tempite_amnt matches 1.. run scoreboard players set @s ttb_model_cmd 5

scoreboard players add @s ttb_model_cmd 6830000
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s ttb_model_cmd
