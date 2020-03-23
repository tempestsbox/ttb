#called by entity/player/holding/bright_relic

#audiovisuals
playsound entity.endermite.death player @s ~ ~ ~ 2 0.5 1
particle soul_fire_flame ~ ~ ~ 0 0 0 0.25 50 normal @a
particle end_rod ~ ~ ~ .25 1 .25 .1 100 normal @a

#functionality
scoreboard players operation @s[nbt={SelectedItem:{tag:{ttb:{staff:"repulsion"}}}}] ttb_mana_repulsi += $recharge_bright_relic ttb_mana_repulsi
scoreboard players operation @s[nbt={SelectedItem:{tag:{ttb:{staff:"relativity"}}}}] ttb_mana_relativ += $recharge_bright_relic ttb_mana_relativ
scoreboard players operation @s[nbt={SelectedItem:{tag:{ttb:{staff:"extraction"}}}}] ttb_mana_extract += $recharge_bright_relic ttb_mana_extract
scoreboard players operation @s[nbt={SelectedItem:{tag:{ttb:{staff:"refrigerant"}}}}] ttb_mana_refrige += $recharge_bright_relic ttb_mana_refrige
scoreboard players operation @s[nbt={SelectedItem:{tag:{ttb:{staff:"infallible"}}}}] ttb_mana_infalli += $recharge_bright_relic ttb_mana_infalli
scoreboard players operation @s[nbt={SelectedItem:{tag:{ttb:{staff:"shatter"}}}}] ttb_mana_shatter += $recharge_bright_relic ttb_mana_shatter
scoreboard players operation @s[nbt={SelectedItem:{tag:{ttb:{staff:"temporal"}}}}] ttb_mana_tempora += $recharge_bright_relic ttb_mana_tempora
scoreboard players operation @s[nbt={SelectedItem:{tag:{ttb:{staff:"captive"}}}}] ttb_mana_captiv += $recharge_bright_relic ttb_mana_captiv
scoreboard players operation @s[nbt={SelectedItem:{tag:{ttb:{staff:"ether"}}}}] ttb_mana_ether += $recharge_bright_relic ttb_mana_ether
scoreboard players operation @s[nbt={SelectedItem:{tag:{ttb:{staff:"harvest"}}}}] ttb_mana_harvest += $recharge_bright_relic ttb_mana_harvest
scoreboard players operation @s[nbt={SelectedItem:{tag:{ttb:{staff:"saturation"}}}}] ttb_mana_saturat += $recharge_bright_relic ttb_mana_saturat
scoreboard players operation @s[nbt={SelectedItem:{tag:{ttb:{staff:"mage"}}}}] ttb_mana_mage += $recharge_bright_relic ttb_mana_mage
scoreboard players operation @s[nbt={SelectedItem:{tag:{ttb:{staff:"blight"}}}}] ttb_mana_blight += $recharge_bright_relic ttb_mana_blight
scoreboard players operation @s[nbt={SelectedItem:{tag:{ttb:{staff:"skitter"}}}}] ttb_mana_skitter += $recharge_bright_relic ttb_mana_skitter
scoreboard players operation @s[nbt={SelectedItem:{tag:{ttb:{staff:"netherknight"}}}}] ttb_mana_netherk += $recharge_bright_relic ttb_mana_netherk
scoreboard players operation @s[nbt={SelectedItem:{tag:{ttb:{staff:"spirit"}}}}] ttb_mana_spirit += $recharge_bright_relic ttb_mana_spirit
function ttb:item/staff/verify_mana

scoreboard players operation @s ttb_relic_damage -= $threshold ttb_relic_damage
