#called by entity/player/clock16

#recharge
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{item:"staff"}}}}] run function ttb:item/staff/mana/recharge/dark_relic
