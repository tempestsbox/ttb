# called by entity/player/clock16t

clear @s clock{ttb:{item:'tempite_gel'}}

particle witch ~ ~.5 ~ .1 .5 .1 0 30 normal @a
particle smoke ~ ~.5 ~ .1 .5 .1 0 30 normal @a

playsound block.redstone_torch.burnout player @a[distance=..16] ~ ~ ~ 1 2 1
playsound block.brewing_stand.brew player @a[distance=..16] ~ ~ ~ 1 2 1
