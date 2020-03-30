#called by entity/endermenace/clock2s

#audiovisuals
playsound entity.enderman.teleport neutral @a[distance=..16] ~ ~ ~ 2 0.5 1
particle witch ~ ~1 ~ 0 1 0 1 100 normal @a

#functionality
tag @a[distance=..5,gamemode=!creative,gamemode=!spectator] add ttb_endermenace_teleport
execute at @a[tag=ttb_endermenace_teleport] run particle portal ~ ~1 ~ 0 1 0 1 100 normal @a
# @TODO fix teleporting to highest block
spreadplayers ~ ~ 5 10 false @a[tag=ttb_endermenace_teleport]
execute at @a[tag=ttb_endermenace_teleport] run particle witch ~ ~1 ~ 0 1 0 1 100 normal @a
tag @a remove ttb_endermenace_teleport
