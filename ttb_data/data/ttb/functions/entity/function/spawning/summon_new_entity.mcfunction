#called by entity/function/spawning/environment_checks
#@s - environment check stick entity

execute if entity @s[nbt={Item:{tag:{ttb:{entity:"mage"}}}}] run function ttb:entity/mage/summon
# E:\FTP\launch\data\origami-games\loot_tables\launch\entities\function\spawning\
#remove entity
kill @s[type=item]
