# called by block/tempest_crafter/recipe_validity_check

execute store result score stack_multiplier ttb_slot_size run data get block ~ ~ ~ Items[{Slot:16b}].tag.ttb.crafting.multiplier
scoreboard players operation @s ttb_slot_size *= stack_multiplier ttb_slot_size
execute store result block ~ ~ ~ Items[{Slot:16b}].Count byte 1 run scoreboard players get @s ttb_slot_size
# data remove block
data remove block ~ ~ ~ Items[{Slot:16b}].tag.ttb.crafting

# remove tag
execute store result score tag_size ttb_slot_size run data get block ~ ~ ~ Items[{Slot:16b}].tag
execute if score tag_size ttb_slot_size matches 0 run data remove block ~ ~ ~ Items[{Slot:16b}].tag
