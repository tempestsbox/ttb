#called by item/staff/check_staff

#audiovisuals
playsound entity.iron_golem.hurt voice @a[distance=..16] ~ ~ ~ 2 0.5 1
playsound entity.iron_golem.hurt voice @a[distance=..16] ~ ~ ~ 2 0.6 1
particle block obsidian ~ ~1 ~ 1 1 1 0.01 400 normal @a

#functionality
effect give @s blindness 10 0 true
effect give @s resistance 10 255
effect give @s slowness 10 255 true
effect give @s jump_boost 10 128 true
effect give @s weakness 10 255 true

#depletion
execute in overworld positioned 29999984 255 29999984 run function ttb:item/staff/durability/update
