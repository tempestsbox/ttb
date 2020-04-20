#called by block/tempite_wire/color/compare_type || block/tempite_wire/glass

scoreboard players add @s[tag=!ttb_tempite_stone] ttb_tempite_deca 1
scoreboard players operation @e[type=armor_stand,tag=ttb_tempite_wire,distance=...1,limit=1] ttb_tempite_deca = @s ttb_tempite_deca
tellraw @a[tag=ttb_debug] [{"nbt":"UUID[0]","entity":"@s"},": ",{"score":{"objective":"ttb_tempite_deca","name":"@s"}}]
scoreboard players reset @s ttb_tempite_deca
