# called by item/staff/relativity/use_right

# audiovisuals
playsound entity.enderman.teleport player @a[distance=..16] ~ ~ ~ 2 .5 1
particle witch ~ ~ ~ 1 0 1 .1 200 normal @a

# functionality
effect give @e[type=zombie,sort=nearest,limit=1] instant_health 1 1
tp @s ~ ~ ~ ~180 ~
