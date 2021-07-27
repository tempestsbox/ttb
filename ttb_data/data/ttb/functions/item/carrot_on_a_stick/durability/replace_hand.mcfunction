# called by item/carrot_on_a_stick/durability/update positioned ~ ~-1 ~

# set shulker box
setblock ~ ~ ~ yellow_shulker_box{Items:[{Slot:0b,id:"white_stained_glass",Count:1b,tag:{CustomModelData:6830001}}]}

# get if offhand
execute store result score #is_usage_offhand ttb_data run data remove storage ttb:temp item_durability_update.Slot

# set shulker box item
data modify block ~ ~ ~ Items[0] set from storage ttb:temp item_durability_update

# loot to respective hand
execute unless score #is_usage_offhand ttb_data matches 1 run loot replace entity @s weapon.mainhand 1 mine ~ ~ ~ air{drop_contents:1b}
execute if score #is_usage_offhand ttb_data matches 1 run loot replace entity @s weapon.offhand 1 mine ~ ~ ~ air{drop_contents:1b}

# remove shulker box
setblock ~ ~ ~ air
