# called by block/eckspei_locker/tick

execute as @e[type=experience_orb,dx=0] at @s run function ttb:block/eckspei_locker/absorb_experience/absorb

execute if score #eckspei_locker_orb_value_total ttb_data matches 1.. run playsound entity.enderman.teleport block @a[distance=..16] ~ ~ ~ 1 2 1

# store experience
scoreboard players operation @s ttb_ecks_loc_exp += #eckspei_locker_orb_value_total ttb_data

scoreboard players reset #eckspei_locker_orb_value ttb_data
scoreboard players reset #eckspei_locker_orb_value_total ttb_data
