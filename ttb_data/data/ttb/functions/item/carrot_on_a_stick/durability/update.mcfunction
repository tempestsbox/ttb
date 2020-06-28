# updates carrot on a stick custom-item durability data - called in various places

# pre
forceload add ~ ~

# get copy
setblock ~ ~-1 ~ yellow_shulker_box{Items:[{Slot:0b,id:"barrier",Count:1b,tag:{CustomModelData:6830001}}]}
execute store result score #is_usage_offhand ttb_data run data remove storage ttb:temp item_durability_update.Slot
data modify block ~ ~-1 ~ Items[0] set from storage ttb:temp item_durability_update
execute unless data storage ttb:temp item_durability_update run data modify block ~ ~-1 ~ Items[0] set from entity @s HandItems[0]

# pre
execute store result score @s ttb_durab_max run data get block ~ ~-1 ~ Items[0].tag.ttb.max_durability

# update copy
## custom durability
### item data
execute if score @s ttb_durab > @s ttb_durab_max run scoreboard players operation @s ttb_durab = @s ttb_durab_max
scoreboard players set @s[scores={ttb_durab=..-1}] ttb_durab 0
execute store result block ~ ~-1 ~ Items[0].tag.ttb.durability int 1 run scoreboard players get @s ttb_durab
### item lore
setblock ~ ~ ~ oak_sign{Text1:'[{"text":"","italic":false,"color":"gray"},[{"translate":"item.durability","with":[{"nbt":"Items[0].tag.ttb.durability","block":"~ ~-1 ~"},{"nbt":"Items[0].tag.ttb.max_durability","block":"~ ~-1 ~"}]}]]'}
data modify block ~ ~-1 ~ Items[0].tag.display.Lore[0] set from block ~ ~ ~ Text1
setblock ~ ~ ~ air
# vanilla damage value
scoreboard players operation @s ttb_durab_max -= @s ttb_durab
scoreboard players operation @s ttb_durab_max *= #100 ttb_gamerules
execute store result score @s ttb_durab run data get block ~ ~-1 ~ Items[0].tag.ttb.max_durability
scoreboard players operation @s ttb_durab_max /= @s ttb_durab
scoreboard players operation @s ttb_durab_max *= $carrot_on_a_stick_dur ttb_durab
scoreboard players operation @s ttb_durab_max /= #100 ttb_gamerules
execute store result block ~ ~-1 ~ Items[0].tag.Damage int 1 run scoreboard players get @s ttb_durab_max

# post
execute if score @s ttb_model_cmd matches 0.. run function ttb:item/carrot_on_a_stick/durability/set_custom_model_data
execute unless score #is_usage_offhand ttb_data matches 1 run loot replace entity @s weapon.mainhand 1 mine ~ ~-1 ~ air{drop_contents:1b}
execute if score #is_usage_offhand ttb_data matches 1 run loot replace entity @s weapon.offhand 1 mine ~ ~-1 ~ air{drop_contents:1b}
setblock ~ ~-1 ~ air
forceload remove ~ ~
