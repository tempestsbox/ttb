#called by entity/player/clock16t

#recharge
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{item:"staff"}}}}] run function ttb:item/staff/durability/recharge/dark_relic
