#called by tick

#entity ticks
execute if entity @s[type=item] run function ttb:entity/item/tick
execute if entity @s[type=armor_stand] run function ttb:entity/armor_stand/tick
execute if entity @s[type=area_effect_cloud] run function ttb:entity/area_effect_cloud/tick
execute if entity @s[type=item_frame] run function ttb:entity/item_frame/tick
execute if entity @s[type=!#ttb:entity/function/spawning/no_check,tag=!ttb_entity,tag=!ttb_no_check] run function ttb:entity/function/spawning/check

#entity immersion
execute if entity @s[tag=ttb_dynamic_model] unless entity @s[tag=ttb_remove] run function ttb:entity/function/model/check
execute if entity @s[tag=ttb_sound] unless entity @s[tag=ttb_remove] run function ttb:entity/function/sound_events/check

#immunities
data remove entity @s[tag=ttb_fire_immune] Fire

#removal
## generic checks
execute if entity @s[tag=ttb_passenger] unless entity @e[tag=ttb_vehicle,dx=0] run tag @s add ttb_remove
execute if entity @s[tag=ttb_vehicle] unless data entity @s Passengers run tag @s add ttb_remove
## debug message
execute if entity @s[tag=ttb_remove] if score entityRemovalDebugMessage ttb_gamerules matches 1 run tellraw @a[tag=ttb_debug] [{"text":"","color":"gray","italic":true}, ["[",{"translate":"text.ttb.debug.prefix"},"] "], [{"translate":"text.ttb.debug.removal"}," ",{"selector":"@s","underlined":true}]]
## remove entity
data merge entity @s[tag=ttb_remove] {Health:0,DeathTime:19,Time:0,Duration:0,Size:0,Age:6000,DeathLootTable:"minecraft:empty"}
kill @s[tag=ttb_remove]
