# called by block/eckspei_locker/output_experience/eckspei_rod_check

# get item
data modify entity @s HandItems[0] set from block ~ ~ ~ Items[{Slot:12b}]

# add durability
execute store result score @s ttb_durab run data get entity @s HandItems[0].tag.ttb.durability
scoreboard players add @s ttb_durab 1

# remove experience
scoreboard players remove @s ttb_ecks_loc_exp 1

# update durability data
scoreboard players set @s ttb_model_cmd 18
execute in overworld positioned 29999984 255 29999984 run function ttb:item/carrot_on_a_stick/durability/update

# store item back into container
data modify block ~ ~ ~ Items[{Slot:12b}] merge from entity @s HandItems[0]

# remove item from entity
data remove entity @s HandItems[0]

# audiovisuals
particle totem_of_undying ~ ~ ~ .25 .25 .25 .2 2 normal @a

execute store result score @s ttb_durab run data get block ~ ~ ~ Items[{Slot:12b}].tag.ttb.durability
execute store result score @s ttb_durab_max run data get block ~ ~ ~ Items[{Slot:12b}].tag.ttb.max_durability
execute if score @s ttb_durab = @s ttb_durab_max run function ttb:block/eckspei_locker/output_experience/finished
