# called by block/eckspei_locker/tick

# pre
execute positioned ~ ~1 ~ run tag @e[type=armor_stand,tag=ttb_eckspei_locker,dx=0,limit=1] add ttb_eckspei_locker_player

# remove experience
xp add @s 1 points
scoreboard players remove @e[type=armor_stand,tag=ttb_eckspei_locker,tag=ttb_eckspei_locker_player,limit=1] ttb_ecks_loc_exp 1

# audiovisuals
execute at @s unless entity @e[type=experience_orb,distance=..1,limit=1] anchored eyes run summon experience_orb ^ ^ ^

execute at @e[type=armor_stand,tag=ttb_eckspei_locker,tag=ttb_eckspei_locker_player,limit=1] run particle totem_of_undying ~ ~ ~ .25 .25 .25 .2 2 normal @a

execute if score @e[type=armor_stand,tag=ttb_eckspei_locker,tag=ttb_eckspei_locker_player,limit=1] ttb_ecks_loc_exp matches 0 run function ttb:block/eckspei_locker/output_experience/finished

# post
tag @e[type=armor_stand,tag=ttb_eckspei_locker] remove ttb_eckspei_locker_player
