#tempest crafter recipe check
#@s - tempest crafter with valid recipe
#called by crafting/recipe_validity_check

#example
# execute if score @s ttb_slot_count matches RECIPE_SLOT_COUNT if score @s ttb_slot_size matches ..MAX_STACK if block ~ ~ ~ dropper{Items:[TO_CRAFT_ITEMS]} run data merge block ~ ~ ~ {Items:[{Slot:8b,ITEM,tag:{ttb:{crafting:{multiplier:MULTIPLIER}}}}]}

#epic test recipes
execute if score @s ttb_slot_count matches 1 if score @s ttb_slot_size matches ..64 if block ~ ~ ~ dropper{Items:[{id:"minecraft:stick",Slot:0b}]} run data merge block ~ ~ ~ {Items:[{Slot:8b,id:stone,Count:1,tag:{ttb:{crafting:{multiplier:1}}}}]}
execute if score @s ttb_slot_count matches 2 if score @s ttb_slot_size matches ..32 if block ~ ~ ~ dropper{Items:[{id:"minecraft:stick",Slot:0b},{id:"minecraft:stick",Slot:1b}]} run data merge block ~ ~ ~ {Items:[{Slot:8b,id:stone,Count:1,tag:{ttb:{crafting:{multiplier:2}}}}]}
