# called by entity/deadlock/variant/sniper/summon

loot replace entity @s weapon.mainhand loot ttb:items/deadlock_sniper_bow
data modify entity @s DeathLootTable set value "ttb:entities/deadlock/variant/sniper"
data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 50d
