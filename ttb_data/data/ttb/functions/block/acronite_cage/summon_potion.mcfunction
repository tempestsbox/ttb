# called by block/acronite_cage/triggered

execute if score @s ttb_machine_rot matches 0 run summon potion ~ ~ ~1 {Tags:["ttb_entity","ttb_acronite_cage_potion"],Motion:[0d,.4d,0d]}
execute if score @s ttb_machine_rot matches 90 run summon potion ~-1 ~ ~ {Tags:["ttb_entity","ttb_acronite_cage_potion"],Motion:[0d,.4d,0d]}
execute if score @s ttb_machine_rot matches 180 run summon potion ~ ~ ~-1 {Tags:["ttb_entity","ttb_acronite_cage_potion"],Motion:[0d,.4d,0d]}
execute if score @s ttb_machine_rot matches -90 run summon potion ~1 ~ ~ {Tags:["ttb_entity","ttb_acronite_cage_potion"],Motion:[0d,.4d,0d]}
