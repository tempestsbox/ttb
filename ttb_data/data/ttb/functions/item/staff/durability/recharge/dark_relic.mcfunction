#called by entity/player/holding/dark_relic

#audiovisuals
particle effect ~ ~ ~ 1 1 1 0.01 200 normal @a
playsound entity.wither.ambient player @a[distance=..16] ~ ~ ~ 2 0.5 1

#functionality
scoreboard players add @s[predicate=ttb:entity/player/holding/repulsion_staff] ttb_staff_dur 7
scoreboard players add @s[predicate=ttb:entity/player/holding/relativity_staff] ttb_staff_dur 10
scoreboard players add @s[predicate=ttb:entity/player/holding/extraction_staff] ttb_staff_dur 15
scoreboard players add @s[predicate=ttb:entity/player/holding/refrigerant_staff] ttb_staff_dur 13
scoreboard players add @s[predicate=ttb:entity/player/holding/infallible_staff] ttb_staff_dur 5
scoreboard players add @s[predicate=ttb:entity/player/holding/shatter_staff] ttb_staff_dur 4
scoreboard players add @s[predicate=ttb:entity/player/holding/temporal_staff] ttb_staff_dur 2
scoreboard players add @s[predicate=ttb:entity/player/holding/captive_staff] ttb_staff_dur 3
scoreboard players add @s[predicate=ttb:entity/player/holding/ether_staff] ttb_staff_dur 2
scoreboard players add @s[predicate=ttb:entity/player/holding/harvest_staff] ttb_staff_dur 1
scoreboard players add @s[predicate=ttb:entity/player/holding/saturation_staff] ttb_staff_dur 4
scoreboard players add @s[predicate=ttb:entity/player/holding/mage_staff] ttb_staff_dur 8
scoreboard players add @s[predicate=ttb:entity/player/holding/blight_staff] ttb_staff_dur 8
scoreboard players add @s[predicate=ttb:entity/player/holding/skitter_staff] ttb_staff_dur 8
scoreboard players add @s[predicate=ttb:entity/player/holding/netherknight_staff] ttb_staff_dur 8
scoreboard players add @s[predicate=ttb:entity/player/holding/spirit_staff] ttb_staff_dur 50
execute in overworld positioned 29999984 255 29999984 run function ttb:item/staff/durability/update

replaceitem entity @s weapon.offhand air
loot give @s[gamemode=!survival,gamemode=!adventure] loot ttb:items/dark_relic
