# called by entity/tick

execute unless score @s ttb_model_cmd_in matches 6830000.. store result score @s ttb_model_cmd_in run data get entity @s ArmorItems[3].tag.CustomModelData
scoreboard players operation @s ttb_model_cmd = @s ttb_model_cmd_in

# condition checks
scoreboard players add @s[nbt=!{HurtTime:0s}] ttb_model_cmd 1
scoreboard players add @s[nbt=!{Motion:[0.0d,0.0d,0.0d]}] ttb_model_cmd 2

# store result to cmd
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s ttb_model_cmd
