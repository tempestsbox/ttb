# called by item/staff/mage/use_right

# audiovisuals
particle flame ~ ~3 ~ 0 1 0 0.01 100 normal @a

# functionality
effect give @s levitation 4 1
data modify entity @s Fire set value 85s
execute if score mobGriefing ttb_gamerules matches 1 run setblock ~ ~ ~ fire keep
