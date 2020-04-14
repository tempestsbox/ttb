#called by advancement detection/entity/player/hurt_entity

scoreboard players reset @s[predicate=ttb:item/bright_relic/reset_score] ttb_relic_damage

advancement revoke @s only ttb:detection/entity/player/hurt_entity
