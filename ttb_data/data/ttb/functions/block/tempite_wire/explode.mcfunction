#called by block/tempite_wire/check_adjacent

particle explosion ~ ~ ~
playsound entity.generic.explode block @a[distance=..16] ~ ~ ~ 1 1 1
playsound entity.generic.explode block @a[distance=..16] ~ ~ ~ 1 2 1
setblock ~ ~ ~ air
kill @e[type=armor_stand,tag=ttb_tempite_wire_nearby]
