# called by entity/mage/pillar/variant/explosion/pre_explode

function ttb:util/explosion_simulation
scoreboard players set @e[type=armor_stand,tag=ttb_pillar_explosion,distance=1..9,scores={ttb_age=..99}] ttb_age 100

summon area_effect_cloud ~ ~ ~ {Particle:"crit",Duration:10,Radius:3.5f,CustomName:'"ttb_pillar_explosion_indicator"'}

kill @s
