#called by entity/player/used_item/carrot_on_a_stick

function ttb:item/staff/verify_mana

execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:"repulsion"}}}}] run function ttb:item/staff/repulsion/check_mana
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:"relativity"}}}}] run function ttb:item/staff/relativity/check_mana
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:"extraction"}}}}] run function ttb:item/staff/extraction/check_mana
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:"refrigerant"}}}}] run function ttb:item/staff/refrigerant/check_mana
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:"infallible"}}}}] run function ttb:item/staff/infallible/check_mana
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:"shatter"}}}}] run function ttb:item/staff/shatter/check_mana
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:"temporal"}}}}] run function ttb:item/staff/temporal/check_mana
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:"captive"}}}}] run function ttb:item/staff/captive/check_mana
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:"ether"}}}}] run function ttb:item/staff/ether/check_mana
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:"harvest"}}}}] run function ttb:item/staff/harvest/check_mana
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:"saturation"}}}}] run function ttb:item/staff/saturation/check_mana
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:"mage"}}}}] run function ttb:item/staff/mage/check_mana
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:"blight"}}}}] run function ttb:item/staff/blight/check_mana
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:"skitter"}}}}] run function ttb:item/staff/skitter/check_mana
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:"netherknight"}}}}] run function ttb:item/staff/netherknight/check_mana
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:"spirit"}}}}] run function ttb:item/staff/spirit/check_mana
