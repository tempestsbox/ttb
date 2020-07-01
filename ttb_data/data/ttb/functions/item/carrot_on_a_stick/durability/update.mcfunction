# updates carrot on a stick custom-item durability data - called in various places

# pre
forceload add ~ ~
execute store result score #durability_max ttb_data run data get storage ttb:temp item_durability_update.tag.ttb.max_durability

# item durability data
execute unless score #durability ttb_data > #durability_max ttb_data store result storage ttb:temp item_durability_update.tag.ttb.durability int 1 run scoreboard players get #durability ttb_data
execute if score #durability ttb_data > #durability_max ttb_data store result storage ttb:temp item_durability_update.tag.ttb.durability int 1 run scoreboard players get #durability_max ttb_data
# item lore
setblock ~ ~ ~ oak_sign{Text1:'[{"text":"","italic":false,"color":"gray"},[{"translate":"item.durability","with":[{"nbt":"item_durability_update.tag.ttb.durability","storage":"ttb:temp"},{"nbt":"item_durability_update.tag.ttb.max_durability","storage":"ttb:temp"}]}]]'}
data modify storage ttb:temp item_durability_update.tag.display.Lore[0] set from block ~ ~ ~ Text1
setblock ~ ~ ~ air
# vanilla damage value
scoreboard players operation #durability_as_coas_damage ttb_data = #durability_max ttb_data
scoreboard players operation #durability_as_coas_damage ttb_data -= #durability ttb_data
scoreboard players operation #durability_as_coas_damage ttb_data *= #100 ttb_gamerules
scoreboard players operation #durability_as_coas_damage ttb_data /= #durability_max ttb_data
scoreboard players operation #durability_as_coas_damage ttb_data *= carrot_on_a_stick_durability ttb_data
scoreboard players operation #durability_as_coas_damage ttb_data /= #100 ttb_gamerules
execute store result storage ttb:temp item_durability_update.tag.Damage int 1 run scoreboard players get #durability_as_coas_damage ttb_data

# post
execute if score @s ttb_model_cmd matches 0.. run function ttb:item/carrot_on_a_stick/durability/set_custom_model_data
execute unless entity @s[tag=ttb_machine] positioned ~ ~-1 ~ run function ttb:item/carrot_on_a_stick/durability/replace_hand
forceload remove ~ ~
