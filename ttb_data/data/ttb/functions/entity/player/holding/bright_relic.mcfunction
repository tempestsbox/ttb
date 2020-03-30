#called by entity/player/clock16t

#recharge
execute if score @s ttb_relic_damage >= $threshold ttb_relic_damage run particle soul_fire_flame ~ ~ ~ 0 0 0 0.1 50 normal @a
execute if score @s ttb_relic_damage >= $threshold ttb_relic_damage if entity @s[nbt={SelectedItem:{tag:{ttb:{item:"staff"}}}}] run function ttb:item/staff/durability/recharge/bright_relic
