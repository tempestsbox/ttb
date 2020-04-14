#called by block/tempest_crafter/tick

#store number of full slots
scoreboard players reset @s ttb_slot_count
execute if data block ~ ~ ~ Items[{Slot:2b}] run scoreboard players add @s ttb_slot_count 1
execute if data block ~ ~ ~ Items[{Slot:3b}] run scoreboard players add @s ttb_slot_count 1
execute if data block ~ ~ ~ Items[{Slot:4b}] run scoreboard players add @s ttb_slot_count 1
execute if data block ~ ~ ~ Items[{Slot:11b}] run scoreboard players add @s ttb_slot_count 1
execute if data block ~ ~ ~ Items[{Slot:12b}] run scoreboard players add @s ttb_slot_count 1
execute if data block ~ ~ ~ Items[{Slot:13b}] run scoreboard players add @s ttb_slot_count 1
execute if data block ~ ~ ~ Items[{Slot:20b}] run scoreboard players add @s ttb_slot_count 1
execute if data block ~ ~ ~ Items[{Slot:21b}] run scoreboard players add @s ttb_slot_count 1
execute if data block ~ ~ ~ Items[{Slot:22b}] run scoreboard players add @s ttb_slot_count 1

#get number of items from first array element
execute store result score first_stack_count ttb_slot_size run data get block ~ ~ ~ Items[{Slot:2b}].Count

#check if each slot with an item in it has the same stack size
execute if score @s ttb_slot_count matches 2.. store result score @s ttb_slot_size run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute if score @s ttb_slot_count matches 2.. unless score @s ttb_slot_size = first_stack_count ttb_slot_size run scoreboard players set first_stack_count ttb_slot_size 0

execute if score @s ttb_slot_count matches 3.. store result score @s ttb_slot_size run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute if score @s ttb_slot_count matches 3.. unless score @s ttb_slot_size = first_stack_count ttb_slot_size run scoreboard players set first_stack_count ttb_slot_size 0

execute if score @s ttb_slot_count matches 4.. store result score @s ttb_slot_size run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute if score @s ttb_slot_count matches 4.. unless score @s ttb_slot_size = first_stack_count ttb_slot_size run scoreboard players set first_stack_count ttb_slot_size 0

execute if score @s ttb_slot_count matches 5.. store result score @s ttb_slot_size run data get block ~ ~ ~ Items[{Slot:11b}].Count
execute if score @s ttb_slot_count matches 5.. unless score @s ttb_slot_size = first_stack_count ttb_slot_size run scoreboard players set first_stack_count ttb_slot_size 0

execute if score @s ttb_slot_count matches 6.. store result score @s ttb_slot_size run data get block ~ ~ ~ Items[{Slot:12b}].Count
execute if score @s ttb_slot_count matches 6.. unless score @s ttb_slot_size = first_stack_count ttb_slot_size run scoreboard players set first_stack_count ttb_slot_size 0

execute if score @s ttb_slot_count matches 7.. store result score @s ttb_slot_size run data get block ~ ~ ~ Items[{Slot:13b}].Count
execute if score @s ttb_slot_count matches 7.. unless score @s ttb_slot_size = first_stack_count ttb_slot_size run scoreboard players set first_stack_count ttb_slot_size 0

execute if score @s ttb_slot_count matches 8.. store result score @s ttb_slot_size run data get block ~ ~ ~ Items[{Slot:20b}].Count
execute if score @s ttb_slot_count matches 8.. unless score @s ttb_slot_size = first_stack_count ttb_slot_size run scoreboard players set first_stack_count ttb_slot_size 0

execute if score @s ttb_slot_count matches 9.. store result score @s ttb_slot_size run data get block ~ ~ ~ Items[{Slot:21b}].Count
execute if score @s ttb_slot_count matches 9.. unless score @s ttb_slot_size = first_stack_count ttb_slot_size run scoreboard players set first_stack_count ttb_slot_size 0

scoreboard players operation @s ttb_slot_size = first_stack_count ttb_slot_size

#tell crafters with valid contents to run recipe checks
execute if score @s ttb_slot_size matches 1.. run function ttb:block/tempest_crafter/recipe_check

#check if one of the recipes succeeded
execute if score @s ttb_slot_size matches 1.. if block ~ ~ ~ barrel{Items:[{tag:{ttb:{crafting:{}}}}]} run function ttb:block/tempest_crafter/apply_multiplier
