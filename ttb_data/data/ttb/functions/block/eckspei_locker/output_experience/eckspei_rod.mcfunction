# called by block/eckspei_locker/output_experience/eckspei_rod_check

# get item
data modify storage ttb:temp item_durability_update set from block ~ ~ ~ Items[{Slot:12b}]

# add durability
execute store result score #durability ttb_data run data get storage ttb:temp item_durability_update.tag.ttb.durability
scoreboard players add #durability ttb_data 1

# remove experience
scoreboard players remove @s ttb_ecks_loc_exp 1

# update durability data
scoreboard players set @s ttb_model_cmd 18
execute in overworld positioned 29999984 255 29999984 run function ttb:item/carrot_on_a_stick/durability/update

# store item back into container
data modify block ~ ~ ~ Items[{Slot:12b}] merge from storage ttb:temp item_durability_update

# remove item from entity
data remove storage ttb:temp item_durability_update

# audiovisuals
particle totem_of_undying ~ ~ ~ .25 .25 .25 .2 2 normal @a
execute if score #durability ttb_data = #durability_max ttb_data run function ttb:block/eckspei_locker/output_experience/finished
