# called by block/eckspei_locker/tick

# reimburse items
execute align xyz if entity @e[type=item,dx=0,nbt={Item:{id:"minecraft:barrel",tag:{display:{Name:'{"translate":"block.ttb.eckspei_locker"}'}}}}] run loot spawn ~.5 ~ ~.5 loot ttb:blocks/eckspei_locker

function ttb:block/gui/clear_gui_items

# reimburse experience
summon experience_orb ~ ~ ~ {Tags:["ttb_entity","ttb_eckspei_locker_reimbursement"]}
execute store result entity @e[type=experience_orb,tag=ttb_eckspei_locker_reimbursement,distance=0,limit=1] Value short 1 run scoreboard players get @s ttb_ecks_loc_exp

# kill entities
kill @s[type=!player]
execute align xyz run kill @e[type=item,dx=0,nbt={Item:{id:"minecraft:barrel",tag:{display:{Name:'{"translate":"block.ttb.eckspei_locker"}'}}}}]
