# called by block/eckspei_locker/absorb_experience/...
# @s - xp orb within range

# audiovisuals
particle portal ~ ~ ~ 0 0 0 .2 20 normal @a

# add orb value
execute store result score #eckspei_locker_orb_value ttb_data run data get entity @s Value
scoreboard players operation #eckspei_locker_orb_value_total ttb_data += #eckspei_locker_orb_value ttb_data

# remove orb
kill @s
