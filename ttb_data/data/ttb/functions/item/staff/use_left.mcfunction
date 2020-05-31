#called by item/staff/durability/check

execute anchored eyes positioned ^ ^ ^ run function ttb:item/staff/get_hit_entity

scoreboard players remove @s[gamemode=!creative,gamemode=!spectator] ttb_staff_dur 1
execute if entity @s[predicate=ttb:entity/player/holding/repulsion_staff] as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/repulsion/use_left
execute if entity @s[predicate=ttb:entity/player/holding/relativity_staff] as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/relativity/use_left
execute if entity @s[predicate=ttb:entity/player/holding/extraction_staff] as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/extraction/use_left
execute if entity @s[predicate=ttb:entity/player/holding/refrigerant_staff] as @e[type=!player,type=!#ttb:item/staff/refrigerant/no_target,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/refrigerant/use_left
execute if entity @s[predicate=ttb:entity/player/holding/infallible_staff] as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/infallible/use_left
execute if entity @s[predicate=ttb:entity/player/holding/shatter_staff] as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/shatter/use_left
execute if entity @s[predicate=ttb:entity/player/holding/temporal_staff] as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/temporal/use_left
execute if entity @s[predicate=ttb:entity/player/holding/captive_staff] as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/captive/use_left
execute if entity @s[predicate=ttb:entity/player/holding/ether_staff] as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/ether/use_left
execute if entity @s[predicate=ttb:entity/player/holding/harvest_staff] as @e[type=#ttb:item/staff/harvest/regress,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/harvest/use_left
execute if entity @s[predicate=ttb:entity/player/holding/saturation_staff] as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/saturation/use_left
execute if entity @s[predicate=ttb:entity/player/holding/mage_staff] as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/mage/use_left
execute if entity @s[predicate=ttb:entity/player/holding/blight_staff] as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/blight/use_left
execute if entity @s[predicate=ttb:entity/player/holding/skitter_staff] as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/skitter/use_left
execute if entity @s[predicate=ttb:entity/player/holding/netherknight_staff] as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/netherknight/use_left
execute if entity @s[predicate=ttb:entity/player/holding/spirit_staff] as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/spirit/use_left

tag @e[type=!player,type=!#ttb:sprite,type=!ender_dragon,tag=ttb_hit_entity,limit=1] remove ttb_hit_entity
