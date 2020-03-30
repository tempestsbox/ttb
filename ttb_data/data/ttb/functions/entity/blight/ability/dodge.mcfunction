#called by entity/blight/clock2s

#audiovisuals
playsound entity.blaze.shoot hostile @a[distance=..16] ~ ~ ~ 2 1 1
particle sweep_attack ~ ~ ~ 1 1 1 0 25 normal @a

#functionality
data modify entity @s ArmorItems[3].tag.ttb.y_level_save set from entity @s Pos[1]
spreadplayers ~ ~ 4 5 false @s
data modify entity @s Pos[1] set from entity @s ArmorItems[3].tag.ttb.y_level_save

effect give @a[distance=..4.5] instant_damage
