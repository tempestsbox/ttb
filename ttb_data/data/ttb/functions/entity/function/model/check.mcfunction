#called by entity/tick

#condition checks
tag @s add ttb_moving
tag @s add ttb_hurt
tag @s[nbt={Motion:[0.0d,0.0d,0.0d]}] remove ttb_moving
tag @s[nbt={HurtTime:0s}] remove ttb_hurt
execute if entity @s[tag=!ttb_moving,tag=!ttb_hurt] run function ttb:entity/function/model/set/default
execute if entity @s[tag=!ttb_moving,tag=ttb_hurt] run function ttb:entity/function/model/set/hurt
execute if entity @s[tag=ttb_moving,tag=!ttb_hurt] run function ttb:entity/function/model/set/moving
execute if entity @s[tag=ttb_moving,tag=ttb_hurt] run function ttb:entity/function/model/set/moving_hurt

#store result to cmd
scoreboard players add @s ttb_model_cmd 6830000
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s ttb_model_cmd
