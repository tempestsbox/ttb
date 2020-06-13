# called by world/structure/trap_check

playsound entity.skeleton_horse.ambient ambient @a[distance=..16] ~ ~ ~ 1 2 1
playsound entity.skeleton_horse.ambient ambient @a[distance=..16] ~ ~ ~ 1 1 1
playsound entity.skeleton_horse.ambient ambient @a[distance=..16] ~ ~ ~ 1 0 1
playsound entity.skeleton_horse.death ambient @a[distance=..16] ~ ~ ~ 1 0 1

summon lightning_bolt ~ ~-1.5 ~
setblock ~ ~-1 ~ air destroy

function ttb:entity/wanderer/summon
function ttb:entity/wanderer/summon
function ttb:entity/wanderer/summon
# execute as @e[type=...,tag=ttb_wanderer,distance=0,limit=3] run function ttb:util/near_spread

kill @s[type=area_effect_cloud]
