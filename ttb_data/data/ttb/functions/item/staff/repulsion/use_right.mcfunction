# called by item/staff/use_right

function ttb:item/staff/repulsion/audiovisuals

# launch
effect give @e[type=!player,type=!#ttb:undead,type=!#ttb:sprite,distance=..3] instant_damage 1 2
effect give @e[type=#ttb:undead,distance=..3] instant_health 1 2
effect give @s resistance 5 100 true
effect give @s levitation 1 15 true
