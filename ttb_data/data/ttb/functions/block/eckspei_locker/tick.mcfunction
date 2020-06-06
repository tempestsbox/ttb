# called by entity/armor_stand/tick

# gui
execute if block ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.eckspei_locker"}'} run function ttb:block/eckspei_locker/gui/verify_integrity

# removal
execute unless block ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.eckspei_locker"}'} run function ttb:block/eckspei_locker/remove

# experience output
## to players below locker
execute if entity @s[scores={ttb_ecks_loc_exp=1..}] align xyz positioned ~ ~-1 ~ as @a[gamemode=!creative,gamemode=!spectator,dx=0,limit=1] run function ttb:block/eckspei_locker/output_experience/player
## to eckspei rod inside first locker slot
execute if score @s ttb_ecks_loc_exp matches 1.. if data block ~ ~ ~ Items[{Slot:12b,tag:{ttb:{item:'eckspei_rod'}}}] run function ttb:block/eckspei_locker/output_experience/eckspei_rod_check

# actionbar for players below eckspei locker
execute align xyz positioned ~ ~-1 ~ run title @a[dx=0] actionbar {"translate":"commands.experience.query.points","with":[{"selector":"@s","color":"green"},{"score":{"name":"@s","objective":"ttb_ecks_loc_exp"},"color":"green"}],"color":"dark_green"}
