#@s - tempite stone
#called by entity/armor_stand/tick

#removal
execute unless block ~ ~ ~ hopper[facing=down]{CustomName:'{"translate":"block.ttb.tempite_stone"}'} run function ttb:block/tempite_stone/remove

#recipes
execute if entity @s[tag=!ttb_machine_triggered] if block ~ ~ ~ hopper[enabled=false] run function ttb:block/tempite_stone/triggered
execute if entity @s[tag=ttb_machine_triggered] if block ~ ~ ~ hopper[enabled=true] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6830004
execute if block ~ ~ ~ hopper[enabled=false] run tag @s add ttb_machine_triggered
execute if block ~ ~ ~ hopper[enabled=true] run tag @s remove ttb_machine_triggered
