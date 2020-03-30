#called by item/staff/durability/check

scoreboard players remove @s ttb_staff_dur 1
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"repulsion"}}}}}] run function ttb:item/staff/repulsion/use
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"relativity"}}}}}] run function ttb:item/staff/relativity/use
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"extraction"}}}}}] run function ttb:item/staff/extraction/use
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"refrigerant"}}}}}] run function ttb:item/staff/refrigerant/use
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"infallible"}}}}}] run function ttb:item/staff/infallible/use
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"shatter"}}}}}] run function ttb:item/staff/shatter/use
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"temporal"}}}}}] run function ttb:item/staff/temporal/use
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"captive"}}}}}] run function ttb:item/staff/captive/use
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"ether"}}}}}] run function ttb:item/staff/ether/use
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"harvest"}}}}}] run function ttb:item/staff/harvest/use
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"saturation"}}}}}] run function ttb:item/staff/saturation/use
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"mage"}}}}}] run function ttb:item/staff/mage/use
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"blight"}}}}}] run function ttb:item/staff/blight/use
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"skitter"}}}}}] run function ttb:item/staff/skitter/use
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"netherknight"}}}}}] run function ttb:item/staff/netherknight/use
execute if entity @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"spirit"}}}}}] run function ttb:item/staff/spirit/use
