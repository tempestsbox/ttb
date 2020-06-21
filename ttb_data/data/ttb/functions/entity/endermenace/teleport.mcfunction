# called by entity/endermenace/clock2s

playsound entity.enderman.teleport neutral @a[distance=..16] ~ ~ ~ 2 0.5 1

# pre
particle witch ~ ~1 ~ 0 1 0 1 100 normal @a

# teleport
execute positioned ^5 ^ ^ if block ~ ~ ~ #ttb:passthrough unless entity @s[distance=..5] run tp @s ~ ~ ~
execute positioned ^-5 ^ ^ if block ~ ~ ~ #ttb:passthrough unless entity @s[distance=..5] run tp @s ~ ~ ~

# post
execute at @s run particle witch ~ ~1 ~ 0 1 0 1 100 normal @a
