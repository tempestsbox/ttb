#area effect cloud tick
#@s - area effect cloud
#called by tick

execute if entity @s[tag=ttb_tempite_wire,tag=!ttb_tempite_wire_checked] run function ttb:block/tempite_stone/wire/check_adjacent
