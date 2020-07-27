# called by block/tempest_crafter/tick

# get dropper-like recipe and store number of full slots
data modify storage ttb:temp block.tempest_crafter.input set from block ~ ~ ~ Items
data remove storage ttb:temp block.tempest_crafter.input[{tag:{ttb:{gui_item:1b}}}]
data remove storage ttb:temp block.tempest_crafter.input[{Slot:9b}]

execute store result score @s ttb_slot_count run data get storage ttb:temp block.tempest_crafter.input

# get number of items from first array element
execute store result score first_stack_count ttb_slot_size run data get storage ttb:temp block.tempest_crafter.input[0].Count

# check if each slot with an item in it has the same stack size
execute if score @s ttb_slot_count matches 2.. store result score @s ttb_slot_size run data get storage ttb:temp block.tempest_crafter.input[0].Count
execute if score @s ttb_slot_count matches 2.. unless score @s ttb_slot_size = first_stack_count ttb_slot_size run scoreboard players set first_stack_count ttb_slot_size 0

execute if score @s ttb_slot_count matches 3.. store result score @s ttb_slot_size run data get storage ttb:temp block.tempest_crafter.input[1].Count
execute if score @s ttb_slot_count matches 3.. unless score @s ttb_slot_size = first_stack_count ttb_slot_size run scoreboard players set first_stack_count ttb_slot_size 0

execute if score @s ttb_slot_count matches 4.. store result score @s ttb_slot_size run data get storage ttb:temp block.tempest_crafter.input[2].Count
execute if score @s ttb_slot_count matches 4.. unless score @s ttb_slot_size = first_stack_count ttb_slot_size run scoreboard players set first_stack_count ttb_slot_size 0

execute if score @s ttb_slot_count matches 5.. store result score @s ttb_slot_size run data get storage ttb:temp block.tempest_crafter.input[3].Count
execute if score @s ttb_slot_count matches 5.. unless score @s ttb_slot_size = first_stack_count ttb_slot_size run scoreboard players set first_stack_count ttb_slot_size 0

execute if score @s ttb_slot_count matches 6.. store result score @s ttb_slot_size run data get storage ttb:temp block.tempest_crafter.input[4].Count
execute if score @s ttb_slot_count matches 6.. unless score @s ttb_slot_size = first_stack_count ttb_slot_size run scoreboard players set first_stack_count ttb_slot_size 0

execute if score @s ttb_slot_count matches 7.. store result score @s ttb_slot_size run data get storage ttb:temp block.tempest_crafter.input[5].Count
execute if score @s ttb_slot_count matches 7.. unless score @s ttb_slot_size = first_stack_count ttb_slot_size run scoreboard players set first_stack_count ttb_slot_size 0

execute if score @s ttb_slot_count matches 8.. store result score @s ttb_slot_size run data get storage ttb:temp block.tempest_crafter.input[6].Count
execute if score @s ttb_slot_count matches 8.. unless score @s ttb_slot_size = first_stack_count ttb_slot_size run scoreboard players set first_stack_count ttb_slot_size 0

execute if score @s ttb_slot_count matches 9.. store result score @s ttb_slot_size run data get storage ttb:temp block.tempest_crafter.input[7].Count
execute if score @s ttb_slot_count matches 9.. unless score @s ttb_slot_size = first_stack_count ttb_slot_size run scoreboard players set first_stack_count ttb_slot_size 0

scoreboard players operation @s ttb_slot_size = first_stack_count ttb_slot_size

# tell crafters with valid contents to run recipe checks
execute if score @s ttb_slot_size matches 1.. run function ttb:block/tempest_crafter/recipe_check

# check if one of the recipes succeeded
execute if score @s ttb_slot_size matches 1.. if data block ~ ~ ~ Items[].tag.ttb.crafting.multiplier run function ttb:block/tempest_crafter/apply_multiplier
