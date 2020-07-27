# called by item/staff/use_right

# audiovisuals
playsound entity.enderman.teleport player @a[distance=..16] ~ ~ ~ 2 .5 1
particle witch ~ ~ ~ 1 0 1 .1 200 normal @a

# functionality
effect give @s speed 3 10 true
effect give @s resistance 1 100 true
tp @s @e[type=zombie,sort=random,distance=..32,limit=1]

# post-effects
execute at @s run function ttb:item/staff/relativity/post_teleport
