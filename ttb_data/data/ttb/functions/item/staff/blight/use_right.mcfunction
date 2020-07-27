# called by item/staff/use_right

# audiovisuals
playsound block.grass.break voice @a[distance=..16] ~ ~ ~ 2 0.5 1
playsound block.grass.break voice @a[distance=..16] ~ ~ ~ 2 0.6 1
playsound block.grass.break voice @a[distance=..16] ~ ~ ~ 2 0.7 1
particle block packed_ice ~ ~ ~ .1 0 .1 0 40 normal @a

# functionality
effect give @s resistance 10 1
effect give @s speed 10 4
effect give @s jump_boost 10 2 true
effect give @s strength 10 2
