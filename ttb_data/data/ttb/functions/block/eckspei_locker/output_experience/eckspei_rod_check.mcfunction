# called by block/eckspei_locker/tick

execute store result score @s ttb_durab run data get block ~ ~ ~ Items[{Slot:12b}].tag.ttb.durability
execute store result score @s ttb_durab_max run data get block ~ ~ ~ Items[{Slot:12b}].tag.ttb.max_durability

execute unless score @s ttb_durab >= @s ttb_durab_max run function ttb:block/eckspei_locker/output_experience/eckspei_rod
