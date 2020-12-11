# called by item/staff/harvest/regress/get_entity

data modify entity @s Item merge from storage ttb:temp item.regressed_spawn_egg

kill @s[nbt={Item:{id:"minecraft:white_stained_glass"}}]
data remove entity @s Item.tag.CustomModelData
