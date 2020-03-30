#called by entity/function/spawning/environment_checks
#@s - environment check barrier item entity

execute if entity @s[nbt={Item:{tag:{ttb:{entity:"mage"}}}}] run function ttb:entity/mage/summon
execute if entity @s[nbt={Item:{tag:{ttb:{entity:"ore_dweller"}}}}] run function ttb:entity/ore_dweller/summon
execute if entity @s[nbt={Item:{tag:{ttb:{entity:"endermenace"}}}}] run function ttb:entity/endermenace/summon

#remove entity
kill @s[type=item]
