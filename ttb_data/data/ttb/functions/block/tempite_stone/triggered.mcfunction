# called by block tempite_stone command_block Command

# audiovisuals
particle dust 0.0862 0.8509 0.8117 1 ~ ~ ~ .25 .25 .25 0 100 normal @a
playsound entity.guardian.hurt block @a[distance=..16] ~ ~ ~ 1 0 1
playsound entity.guardian.hurt block @a[distance=..16] ~ ~ ~ 1 2 1

data modify entity @s ArmorItems[3].tag.CustomModelData set value 6830005

# functionality
scoreboard players operation @s ttb_tempite_amnt -= $cost_tempite_stone ttb_tempite_amnt
function ttb:block/tempite_wire/spread
