# called by block/eckspei_locker/tick

# hopper
execute if block ~ ~-1 ~ hopper[facing=down,enabled=true] positioned ~ ~-1.1 ~ unless entity @e[type=experience_orb,distance=...2,limit=1] run function ttb:block/eckspei_locker/output_experience/hopper
# to eckspei rod inside first locker slot
execute if score @s ttb_ecks_loc_exp matches 1.. if data block ~ ~ ~ Items[{Slot:12b,tag:{ttb:{item:'eckspei_rod'}}}] run function ttb:block/eckspei_locker/output_experience/eckspei_rod_check
