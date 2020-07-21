# called by entity/armor_stand/tick

# gui
execute if block ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.eckspei_locker"}'} run function ttb:block/machine/gui/verify_integrity_check

# removal
execute unless block ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.eckspei_locker"}'} run function ttb:block/eckspei_locker/remove

# experience input
execute if block ~ ~1 ~ hopper[facing=down,enabled=true] align xyz positioned ~ ~1.75 ~ run function ttb:block/eckspei_locker/absorb_experience/hopper

# experience output
execute if score @s ttb_ecks_loc_exp matches 1.. run function ttb:block/eckspei_locker/output_experience/check_types

# actionbar for players below eckspei locker
execute align xyz positioned ~ ~-1 ~ run title @a[dx=0] actionbar {"translate":"commands.experience.query.points","with":[{"selector":"@s","color":"green"},{"score":{"name":"@s","objective":"ttb_ecks_loc_exp"},"color":"green"}],"color":"dark_green"}
