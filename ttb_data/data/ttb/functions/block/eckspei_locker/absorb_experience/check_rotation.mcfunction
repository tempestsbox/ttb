# called by block/eckspei_locker/triggered

execute if score @s ttb_machine_rot matches 0 positioned ~-.5 ~ ~.5 as @e[type=experience_orb,dx=-2,dy=0,dz=-1] at @s run function ttb:block/eckspei_locker/absorb_experience/absorb
execute if score @s ttb_machine_rot matches 90 positioned ~-.5 ~ ~-.5 as @e[type=experience_orb,dx=-2,dy=0,dz=-1] at @s run function ttb:block/eckspei_locker/absorb_experience/absorb
execute if score @s ttb_machine_rot matches 180 positioned ~.5 ~ ~-.5 as @e[type=experience_orb,dx=-2,dy=0,dz=-1] at @s run function ttb:block/eckspei_locker/absorb_experience/absorb
execute if score @s ttb_machine_rot matches -90 positioned ~.5 ~ ~.5 as @e[type=experience_orb,dx=-2,dy=0,dz=-1] at @s run function ttb:block/eckspei_locker/absorb_experience/absorb

execute positioned ^ ^ ^.5 run particle dust 0.047 0.855 0.114 1 ~ ~ ~ .75 0 .5 0 40 normal @a
