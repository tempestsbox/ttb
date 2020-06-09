# called by entity/mage/attack/check_random

# audiovisuals
playsound entity.enderman.teleport hostile @a[distance=..16] ~ ~ ~ 1 2 1

particle cloud ~ ~1 ~ .25 1 .25 .05 100 normal @a
particle smoke ~ ~1 ~ .25 1 .25 .05 100 normal @a

# summon cloud
function ttb:entity/mage/pillar/variant/explosion/summon
function ttb:entity/mage/pillar/variant/explosion/summon
function ttb:entity/mage/pillar/variant/explosion/summon
function ttb:entity/mage/pillar/variant/explosion/summon
function ttb:entity/mage/pillar/variant/explosion/summon
execute as @e[type=armor_stand,tag=ttb_pillar_explosion,distance=0,limit=5] run function ttb:util/near_spread
