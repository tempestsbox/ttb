# called by tick

# store health
execute if entity @s[tag=ttb_health] run function ttb:entity/function/store_health

# entity ticks
execute if entity @s[type=item] run function ttb:entity/item/tick
execute if entity @s[type=armor_stand] run function ttb:entity/armor_stand/tick
execute if entity @s[type=area_effect_cloud] run function ttb:entity/area_effect_cloud/tick
execute if entity @s[type=item_frame] run function ttb:entity/item_frame/tick

execute if entity @s[type=potion,tag=ttb_acronite_cage_potion] run function ttb:block/acronite_cage/potion_tick
execute if entity @s[type=tnt,tag=ttb_shatter_staff_tnt,nbt={Fuse:2s}] run function ttb:util/explosion_simulation
execute if entity @s[type=zombie,tag=ttb_mage] run function ttb:entity/mage/tick
execute if entity @s[type=skeleton,tag=ttb_blight] run function ttb:entity/blight/tick

execute if entity @s[type=!#ttb:entity/function/spawning/no_check,tag=!ttb_entity,tag=!ttb_no_check] run function ttb:entity/function/spawning/check

# entity immersion
execute if entity @s[tag=ttb_dynamic_model] unless entity @s[tag=ttb_remove] run function ttb:entity/function/model_check
execute if entity @s[tag=ttb_sound] unless entity @s[tag=ttb_remove] run function ttb:entity/function/sound_event/check

# immunities
data remove entity @s[tag=ttb_fire_immune] Fire

# removal
## generic checks
execute if entity @s[tag=ttb_passenger] unless entity @e[tag=ttb_vehicle,dx=0,limit=1] run tag @s add ttb_remove
execute if entity @s[tag=ttb_vehicle] unless data entity @s Passengers run tag @s add ttb_remove
## debug message
execute if entity @s[tag=ttb_remove] if score entityRemovalDebugMessage ttb_gamerules matches 1 run tellraw @a[tag=ttb_debug] {"translate":"text.ttb.debug","with":[{"translate":"text.ttb.debug.entity_removal","with":[{"selector":"@s","underlined":true}]}],"color":"gray","italic":true}
## remove entity
data merge entity @s[tag=ttb_remove] {Health:0,DeathTime:19,Time:0,Duration:0,Size:0,Age:6000,DeathLootTable:"minecraft:empty"}
kill @s[tag=ttb_remove]

# remove entity init tag
tag @s remove ttb_entity_init
