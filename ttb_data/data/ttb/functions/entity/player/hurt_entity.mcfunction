#called by advancement entity/player/hurt_entity

# get current durability
execute store result score @s ttb_durab run data get entity @s SelectedItem.tag.ttb.durability

# reset bright relic damage score if no holding a staff or bright relic
scoreboard players reset @s[predicate=ttb:item/bright_relic/reset_score] ttb_relic_damage

# use staff
tag @s add ttb_hurt_entity
execute if entity @s[predicate=ttb:entity/function/holding/staff] run function ttb:item/staff/durability/check
tag @s remove ttb_hurt_entity

# revoke check-advancement
advancement revoke @s only ttb:entity/player/hurt_entity
