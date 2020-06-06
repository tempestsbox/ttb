# called by entity/armor_stand/tick

# gui
execute if block ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.eckspei_locker"}'} run function ttb:block/eckspei_locker/gui/verify_integrity

# removal
execute unless block ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.eckspei_locker"}'} run function ttb:block/eckspei_locker/remove

# experience out
execute if entity @s[scores={ttb_ecks_loc_exp=1..}] align xyz positioned ~ ~-1 ~ as @a[gamemode=!creative,gamemode=!spectator,dx=0,limit=1] run function ttb:block/eckspei_locker/output_experience
