# called by entity/function/holding/dark_relic

# audiovisuals
particle effect ~ ~ ~ 1 1 1 0.01 200 normal @a
playsound entity.wither.ambient player @a[distance=..16] ~ ~ ~ 2 0.5 1

# add durability
execute store result score #durability ttb_data run data get storage ttb:temp item_durability_update.tag.ttb.durability
execute store result score #durability_to_add ttb_data run data get storage ttb:temp item_durability_update.tag.ttb.max_durability

scoreboard players operation #durability_to_add ttb_data /= #2 ttb_gamerules
scoreboard players add #durability_to_add ttb_data 1

scoreboard players operation #durability ttb_data += #durability_to_add ttb_data
scoreboard players reset #durability_to_add ttb_data

execute in overworld positioned 29999984 255 29999984 run function ttb:item/carrot_on_a_stick/durability/update

# remove dark relic
item replace entity @s weapon.offhand with air
loot give @s[gamemode=!survival,gamemode=!adventure] loot ttb:items/dark_relic
