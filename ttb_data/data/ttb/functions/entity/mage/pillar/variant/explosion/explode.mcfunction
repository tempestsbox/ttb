# called by entity/mage/pillar/variant/explosion/proximity

function ttb:util/explosion_simulation

kill @e[type=area_effect_cloud,tag=ttb_pillar_explosion,distance=..2,sort=nearest,limit=1]
kill @s
