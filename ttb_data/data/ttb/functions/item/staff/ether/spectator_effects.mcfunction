#called by entity/player/tick

#audiovisuals
particle lava ~ ~ ~ 1 1 1 0.01 1 normal @a

#tick
scoreboard players remove @s ttb_ether_specmo 1

#end
execute unless score @s ttb_ether_specmo matches 2.. run function ttb:item/staff/ether/spectator_end
