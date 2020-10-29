# called by entity/enchanted_ender_pearl/tick

# audiovisuals
particle item ender_pearl{CustomModelData:6830001} ~ ~ ~ .1 .1 .1 .2 20 normal @a
playsound entity.ender_eye.death ambient @a[distance=..16] ~ ~ ~ 1 0 1
playsound entity.ender_eye.death ambient @a[distance=..16] ~ ~ ~ 1 2 1

# remove entity
kill @s
