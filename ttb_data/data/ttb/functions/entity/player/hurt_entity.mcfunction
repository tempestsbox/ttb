#called by advancement entity/player/hurt_entity

scoreboard players reset @s[predicate=ttb:item/bright_relic/reset_score] ttb_relic_damage

tag @s add ttb_hurt_entity
execute if entity @s[predicate=ttb:entity/player/holding/staff] run function ttb:item/staff/durability/check
tag @s remove ttb_hurt_entity

advancement revoke @s only ttb:entity/player/hurt_entity
