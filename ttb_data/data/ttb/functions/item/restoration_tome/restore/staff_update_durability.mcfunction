# called by item/restoration_tome/restore/staff

# update copy
# # custom durability
### item data
scoreboard players operation #durability ttb_data = #durability_max ttb_data
execute store result block ~ ~-1 ~ Items[{Slot:0b}].tag.ttb.durability int 1 run scoreboard players get #durability ttb_data
### item lore
setblock ~ ~ ~ oak_sign{Text1:'[{"text":"","italic":false,"color":"gray"},[{"translate":"item.durability","with":[{"nbt":"Items[{Slot:0b}].tag.ttb.durability","block":"~ ~-1 ~"},{"nbt":"Items[{Slot:0b}].tag.ttb.max_durability","block":"~ ~-1 ~"}]}]]'}
data modify block ~ ~-1 ~ Items[{Slot:0b}].tag.display.Lore[0] set from block ~ ~ ~ Text1
setblock ~ ~ ~ air
# vanilla damage value
scoreboard players operation #durability_max ttb_data -= #durability ttb_data
scoreboard players operation #durability_max ttb_data *= #100 ttb_gamerules
execute store result score #durability ttb_data run data get entity @s Items[{Slot:0b}].tag.ttb.durability
scoreboard players operation #durability_max ttb_data /= #durability ttb_data
scoreboard players operation #durability_max ttb_data *= carrot_on_a_stick_durability ttb_data
scoreboard players operation #durability_max ttb_data /= #100 ttb_gamerules
execute store result block ~ ~-1 ~ Items[{Slot:0b}].tag.Damage int 1 run scoreboard players get #durability_max ttb_data

# debug
tellraw @a[tag=ttb_debug,distance=..6] ["Staff durability: ",[{"nbt":"Items[{Slot:0b}].tag.ttb.durability","entity":"@s"},"/",{"nbt":"Items[{Slot:0b}].tag.ttb.max_durability","entity":"@s"}]]
