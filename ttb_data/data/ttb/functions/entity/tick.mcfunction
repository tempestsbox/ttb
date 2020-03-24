#called by tick

#entity ticks
execute if entity @s[type=item] run function ttb:entity/item/tick
execute if entity @s[type=armor_stand] run function ttb:entity/armor_stand/tick
execute if entity @s[type=!player,type=!#ttb:sprite,tag=!ttb_no_check] run function ttb:entity/spawning/check

#removal
execute if entity @s[tag=ttb_passenger] unless entity @e[tag=ttb_vehicle,dx=0] run tag @s add ttb_remove
execute if entity @s[tag=ttb_vehicle] unless data entity @s Passengers run tag @s add ttb_remove

execute if entity @s[tag=ttb_remove] run tellraw @a[tag=ttb_debug] [{"text":"","color":"gray","italic":true}, ["[",{"translate":"text.ttb.debug.prefix"},"] "], [{"translate":"text.ttb.debug.removal"}," ",{"selector":"@s","underlined":true}]]
data merge entity @s[tag=ttb_remove] {Health:0,DeathTime:19,Time:0,Duration:0,Size:0,Age:6000,DeathLootTable:"minecraft:empty"}
