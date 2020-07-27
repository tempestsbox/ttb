# called by advancement entity/player/hurt_entity

function ttb:item/carrot_on_a_stick/get_hand

# reset bright relic damage score if no holding a staff or bright relic
scoreboard players reset @s[predicate=ttb:item/bright_relic/reset_score] ttb_relic_damage

# use staff
tag @s add ttb_hurt_entity
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{item:'staff'}}}}] run function ttb:item/staff/durability/check
tag @s remove ttb_hurt_entity

# post
data remove storage ttb:temp item_durability_update
advancement revoke @s only ttb:entity/player/hurt_entity
