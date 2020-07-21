# called by block/eckspei_locker/output_experience/check_types

scoreboard players remove @s ttb_ecks_loc_exp 1
summon experience_orb ~ ~ ~ {Value:1s}

execute positioned ~ ~-1 ~ align xyz run title @a[dx=0] actionbar {"translate":"commands.experience.query.points","with":[{"selector":"@s","color":"green"},{"score":{"name":"@s","objective":"ttb_ecks_loc_exp"},"color":"green"}],"color":"dark_green"}
execute if score @s ttb_ecks_loc_exp matches 0 at @s run function ttb:block/eckspei_locker/output_experience/finished
