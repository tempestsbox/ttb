#called by entity/player/tick

#tick
particle lava ~ ~ ~ 1 1 1 0.01 1 normal @a

#start
gamemode spectator @s[scores={ttb_ether_specmo=199}]

#continue
scoreboard players remove @s ttb_ether_specmo 1

#end
execute unless score @s ttb_ether_specmo matches 2.. run function ttb:item/staff/ether/spectator_end
