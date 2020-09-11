# called by tick

# usages
execute if entity @s[scores={ttb_place_iframe=1..}] run function ttb:entity/player/placed_custom_block
execute if entity @s[scores={ttb_use_crtstck=1..}] run function ttb:entity/player/used_item/carrot_on_a_stick
scoreboard players reset @s ttb_place_iframe
scoreboard players reset @s ttb_use_crtstck

# staffs
# ether
execute if entity @s[scores={ttb_ether_specmo=0..}] run function ttb:item/staff/ether/spectator_effects

# debug
execute if entity @s[tag=ttb_debug] if entity @e[type=!#ttb:sprite,tag=ttb_entity,limit=1] run title @s actionbar [{"text":"","color":"red"},[{"nbt":"ArmorItems[3].tag.CustomModelData","entity":"@e[type=!#ttb:sprite,tag=ttb_entity,tag=ttb_dynamic_model,sort=nearest,limit=1]"}," ",{"nbt":"HurtTime","entity":"@e[type=!#ttb:sprite,tag=ttb_entity,tag=ttb_dynamic_model,sort=nearest,limit=1]"}," ",{"nbt":"Health","entity":"@e[type=!#ttb:sprite,tag=ttb_entity,sort=nearest,limit=1]"}," ",{"nbt":"Tags","entity":"@e[type=!#ttb:sprite,tag=ttb_entity,sort=nearest,limit=1]"}]]

# removal
tag @s remove ttb_remove
