#called by entity/player/holding/dark_relic

#audiovisuals
particle effect ~ ~ ~ 1 1 1 0.01 200 normal @a
playsound entity.wither.ambient player @a[distance=..16] ~ ~ ~ 2 0.5 1

#functionality
execute store result score @s ttb_staff_dur run data get entity @s SelectedItem.tag.ttb.staff.durability
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"repulsion"}}}}}] ttb_staff_dur 7
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"relativity"}}}}}] ttb_staff_dur 10
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"extraction"}}}}}] ttb_staff_dur 15
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"refrigerant"}}}}}] ttb_staff_dur 13
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"infallible"}}}}}] ttb_staff_dur 5
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"shatter"}}}}}] ttb_staff_dur 4
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"temporal"}}}}}] ttb_staff_dur 2
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"captive"}}}}}] ttb_staff_dur 3
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"ether"}}}}}] ttb_staff_dur 2
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"harvest"}}}}}] ttb_staff_dur 1
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"saturation"}}}}}] ttb_staff_dur 4
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"mage"}}}}}] ttb_staff_dur 8
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"blight"}}}}}] ttb_staff_dur 8
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"skitter"}}}}}] ttb_staff_dur 8
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"netherknight"}}}}}] ttb_staff_dur 8
scoreboard players add @s[nbt={SelectedItem:{tag:{ttb:{staff:{id:"spirit"}}}}}] ttb_staff_dur 50
function ttb:item/staff/durability/update

clear @s clock{ttb:{item:"dark_relic"}} 1
loot give @s[gamemode=!survival,gamemode=!adventure] loot ttb:items/dark_relic
