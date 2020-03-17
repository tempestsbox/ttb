#called by entity/player/tick

execute if entity @s[nbt={SelectedItem:{tag:{ttb:{item:"staff"}}}}] run function ttb:item/staff/check_staff

scoreboard players reset @s ttb_use_crtstck
