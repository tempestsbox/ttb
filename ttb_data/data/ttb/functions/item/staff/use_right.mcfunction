#called by item/staff/durability/check

scoreboard players remove @s[gamemode=!creative,gamemode=!spectator] ttb_staff_dur 1
execute if entity @s[predicate=ttb:entity/player/holding/repulsion_staff] run function ttb:item/staff/repulsion/use_right
execute if entity @s[predicate=ttb:entity/player/holding/relativity_staff] run function ttb:item/staff/relativity/use_right
execute if entity @s[predicate=ttb:entity/player/holding/extraction_staff] run function ttb:item/staff/extraction/use_right
execute if entity @s[predicate=ttb:entity/player/holding/refrigerant_staff] run function ttb:item/staff/refrigerant/use_right
execute if entity @s[predicate=ttb:entity/player/holding/infallible_staff] run function ttb:item/staff/infallible/use_right
execute if entity @s[predicate=ttb:entity/player/holding/shatter_staff] run function ttb:item/staff/shatter/use_right
execute if entity @s[predicate=ttb:entity/player/holding/temporal_staff] run function ttb:item/staff/temporal/use_right
execute if entity @s[predicate=ttb:entity/player/holding/captive_staff] run function ttb:item/staff/captive/use_right
execute if entity @s[predicate=ttb:entity/player/holding/ether_staff] run function ttb:item/staff/ether/use_right
execute if entity @s[predicate=ttb:entity/player/holding/harvest_staff] run function ttb:item/staff/harvest/use_right
execute if entity @s[predicate=ttb:entity/player/holding/saturation_staff] run function ttb:item/staff/saturation/use_right
execute if entity @s[predicate=ttb:entity/player/holding/mage_staff] run function ttb:item/staff/mage/use_right
execute if entity @s[predicate=ttb:entity/player/holding/blight_staff] run function ttb:item/staff/blight/use_right
execute if entity @s[predicate=ttb:entity/player/holding/skitter_staff] run function ttb:item/staff/skitter/use_right
execute if entity @s[predicate=ttb:entity/player/holding/netherknight_staff] run function ttb:item/staff/netherknight/use_right
execute if entity @s[predicate=ttb:entity/player/holding/spirit_staff] run function ttb:item/staff/spirit/use_right
