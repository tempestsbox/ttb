# called by entity/mage/pillar/variant/explosion/tick

# audiovisuals
playsound entity.creeper.primed hostile @a[distance=..16] ~ ~ ~ 1 1.75 1
particle lava ~ ~ ~ .1 0 .1 1 3 normal @a

data modify entity @s ArmorItems[3].tag.CustomModelData set value 6830017

# don't be removed naturally
data modify entity @e[type=area_effect_cloud,tag=ttb_pillar_explosion,distance=..2,sort=nearest,limit=1] Age set value 0

# explode
scoreboard players add @s ttb_age 1
execute if score @s ttb_age matches 125.. run function ttb:entity/mage/pillar/variant/explosion/explode
