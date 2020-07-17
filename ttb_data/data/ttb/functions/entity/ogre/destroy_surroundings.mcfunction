# called by entity/ogre/clock16t

particle block cobblestone ~ ~1 ~ 1 1 1 0 100 normal @a
playsound block.stone.break block @a[distance=..16] ~ ~ ~ 1 0 1
playsound block.stone.break block @a[distance=..16] ~ ~ ~ 1 1 1
playsound block.stone.break block @a[distance=..16] ~ ~ ~ 1 2 1

fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #ttb:entity/ogre/can_destroy
