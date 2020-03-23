#called by entity/player/holding/dark_relic

#audiovisuals
particle effect ~ ~ ~ 1 1 1 0.01 200 normal @a
playsound entity.wither.ambient player @a[distance=..16] ~ ~ ~ 2 0.5 1

#functionality
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:"repulsion"}}}}] ttb_mana_repulsi 50
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:"relativity"}}}}] ttb_mana_relativ 50
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:"extraction"}}}}] ttb_mana_extract 50
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:"refrigerant"}}}}] ttb_mana_refrige 50
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:"infallible"}}}}] ttb_mana_infalli 50
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:"shatter"}}}}] ttb_mana_shatter 50
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:"temporal"}}}}] ttb_mana_tempora 50
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:"captive"}}}}] ttb_mana_captiv 50
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:"ether"}}}}] ttb_mana_ether 50
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:"harvest"}}}}] ttb_mana_harvest 50
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:"saturation"}}}}] ttb_mana_saturat 50
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:"mage"}}}}] ttb_mana_mage 50
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:"blight"}}}}] ttb_mana_blight 50
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:"skitter"}}}}] ttb_mana_skitter 50
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:"netherknight"}}}}] ttb_mana_netherk 50
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:"spirit"}}}}] ttb_mana_spirit 50
function ttb:item/staff/verify_mana
function ttb:item/staff/mana/report

replaceitem entity @s weapon.offhand air
loot give @s[gamemode=!survival,gamemode=!adventure] loot ttb:items/dark_relic
