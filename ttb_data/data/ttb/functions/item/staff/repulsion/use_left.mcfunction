# called by item/staff/use_left

function ttb:item/staff/repulsion/audiovisuals

# launch
effect give @s[type=!#ttb:undead] instant_damage 1 0
effect give @s[type=#ttb:undead] instant_health 1 0
effect give @s levitation 1 15 true
