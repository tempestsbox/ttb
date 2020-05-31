#called by item/staff/use_right

function ttb:item/staff/netherknight/audiovisuals

# strike
effect give @s resistance 1 255
execute at @e[type=!player,type=!#ttb:sprite,distance=..6,sort=random,limit=3] run summon lightning_bolt
