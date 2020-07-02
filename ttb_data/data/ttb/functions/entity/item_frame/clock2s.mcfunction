#called by entity/clock2s

execute if entity @s[tag=ttb_tempite_insulator] positioned ^ ^ ^-1 align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~ ~ #ttb:block/tempite_wire run function ttb:block/tempite_insulator/clock2s
