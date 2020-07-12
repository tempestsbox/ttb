# called by entity/tick

execute store result score @s ttb_health run data get entity @s Health
execute store result score @s ttb_health_max run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base
