#called by item/staff/durability/check

scoreboard players remove @s[gamemode=!creative,gamemode=!spectator] ttb_staff_dur 1
execute if entity @s[predicate=ttb:entity/player/holding/repulsion_staff] run function ttb:item/staff/repulsion/use
execute if entity @s[predicate=ttb:entity/player/holding/relativity_staff] run function ttb:item/staff/relativity/use
execute if entity @s[predicate=ttb:entity/player/holding/extraction_staff] run function ttb:item/staff/extraction/use
execute if entity @s[predicate=ttb:entity/player/holding/refrigerant_staff] run function ttb:item/staff/refrigerant/use
execute if entity @s[predicate=ttb:entity/player/holding/infallible_staff] run function ttb:item/staff/infallible/use
execute if entity @s[predicate=ttb:entity/player/holding/shatter_staff] run function ttb:item/staff/shatter/use
execute if entity @s[predicate=ttb:entity/player/holding/temporal_staff] run function ttb:item/staff/temporal/use
execute if entity @s[predicate=ttb:entity/player/holding/captive_staff] run function ttb:item/staff/captive/use
execute if entity @s[predicate=ttb:entity/player/holding/ether_staff] run function ttb:item/staff/ether/use
execute if entity @s[predicate=ttb:entity/player/holding/harvest_staff] run function ttb:item/staff/harvest/use
execute if entity @s[predicate=ttb:entity/player/holding/saturation_staff] run function ttb:item/staff/saturation/use
execute if entity @s[predicate=ttb:entity/player/holding/mage_staff] run function ttb:item/staff/mage/use
execute if entity @s[predicate=ttb:entity/player/holding/blight_staff] run function ttb:item/staff/blight/use
execute if entity @s[predicate=ttb:entity/player/holding/skitter_staff] run function ttb:item/staff/skitter/use
execute if entity @s[predicate=ttb:entity/player/holding/netherknight_staff] run function ttb:item/staff/netherknight/use
execute if entity @s[predicate=ttb:entity/player/holding/spirit_staff] run function ttb:item/staff/spirit/use

execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:{durability:0}}}}}] run function ttb:item/staff/break
