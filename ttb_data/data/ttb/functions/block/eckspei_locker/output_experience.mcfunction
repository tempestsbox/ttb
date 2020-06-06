# called by block/eckspei_locker/tick

# audiovisuals
execute at @s unless entity @e[type=experience_orb,distance=..1,limit=1] anchored eyes run summon experience_orb ^ ^ ^

# remove experience
execute positioned ~ ~1 ~ run scoreboard players remove @e[type=armor_stand,tag=ttb_eckspei_locker,dx=0,limit=1] ttb_ecks_loc_exp 1
xp add @s 1 points
