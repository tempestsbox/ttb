# called by entity/armor_stand/clock16t

# texture calculations
scoreboard players operation #eckspei_locker_percentage ttb_data = @s ttb_ecks_loc_exp
scoreboard players operation #eckspei_locker_percentage ttb_data *= #100 ttb_gamerules
scoreboard players operation #eckspei_locker_percentage ttb_data /= @s ttb_ecks_loc_hi

# texture custom model data
scoreboard players set @s ttb_model_cmd 6830010
execute if score #eckspei_locker_percentage ttb_data matches 1.. run scoreboard players add @s ttb_model_cmd 6
execute if score #eckspei_locker_percentage ttb_data matches 40.. run scoreboard players add @s ttb_model_cmd 1
execute if score #eckspei_locker_percentage ttb_data matches 60.. run scoreboard players add @s ttb_model_cmd 1
execute if score #eckspei_locker_percentage ttb_data matches 80.. run scoreboard players add @s ttb_model_cmd 1
execute if score #eckspei_locker_percentage ttb_data matches 100 run scoreboard players add @s ttb_model_cmd 1

execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s ttb_model_cmd
