#called by entity/function/spawning/environment_checks

execute if entity @s[nbt={Item:{tag:{ttb:{entity_spawning:{id:"ore_dweller"}}}}}] run function ttb:entity/ore_dweller/summon
execute if entity @s[nbt={Item:{tag:{ttb:{entity_spawning:{id:"endermenace"}}}}}] run function ttb:entity/endermenace/summon

#remove entity
kill @s[type=item]
