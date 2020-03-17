#called by entity/player/used_item/carrot_on_a_stick

execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:"repulsion"}}}}] run function ttb:item/staff/repulsion/use

tellraw @s {"nbt":"SelectedItem.tag.ttb.staff","entity":"@s"}
