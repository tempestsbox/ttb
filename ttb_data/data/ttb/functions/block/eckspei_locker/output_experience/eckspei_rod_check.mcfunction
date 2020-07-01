# called by block/eckspei_locker/tick

execute store result score #durability ttb_data run data get block ~ ~ ~ Items[{Slot:12b}].tag.ttb.durability
execute store result score #durability_max ttb_data run data get block ~ ~ ~ Items[{Slot:12b}].tag.ttb.max_durability

execute unless score #durability ttb_data >= #durability_max ttb_data run function ttb:block/eckspei_locker/output_experience/eckspei_rod
