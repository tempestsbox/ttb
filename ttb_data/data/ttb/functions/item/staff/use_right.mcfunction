#called by item/staff/durability/check

scoreboard players remove @s[gamemode=!creative,gamemode=!spectator] ttb_durab 1
execute if entity @s[predicate=ttb:entity/function/holding/repulsion_staff] run function ttb:item/staff/repulsion/use_right
execute if entity @s[predicate=ttb:entity/function/holding/relativity_staff] run function ttb:item/staff/relativity/use_right
execute if entity @s[predicate=ttb:entity/function/holding/extraction_staff] run function ttb:item/staff/extraction/use_right
execute if entity @s[predicate=ttb:entity/function/holding/refrigerant_staff] run function ttb:item/staff/refrigerant/use_right
execute if entity @s[predicate=ttb:entity/function/holding/infallible_staff] run function ttb:item/staff/infallible/use_right
execute if entity @s[predicate=ttb:entity/function/holding/shatter_staff] run function ttb:item/staff/shatter/use_right
execute if entity @s[predicate=ttb:entity/function/holding/temporal_staff] run function ttb:item/staff/temporal/use_right
execute if entity @s[predicate=ttb:entity/function/holding/captive_staff] run function ttb:item/staff/captive/use_right
execute if entity @s[predicate=ttb:entity/function/holding/ether_staff] run function ttb:item/staff/ether/use_right
execute if entity @s[predicate=ttb:entity/function/holding/harvest_staff] run function ttb:item/staff/harvest/use_right
execute if entity @s[predicate=ttb:entity/function/holding/saturation_staff] run function ttb:item/staff/saturation/use_right
execute if entity @s[predicate=ttb:entity/function/holding/mage_staff] run function ttb:item/staff/mage/use_right
execute if entity @s[predicate=ttb:entity/function/holding/blight_staff] run function ttb:item/staff/blight/use_right
execute if entity @s[predicate=ttb:entity/function/holding/skitter_staff] run function ttb:item/staff/skitter/use_right
execute if entity @s[predicate=ttb:entity/function/holding/netherknight_staff] run function ttb:item/staff/netherknight/use_right
execute if entity @s[predicate=ttb:entity/function/holding/spirit_staff] run function ttb:item/staff/spirit/use_right
