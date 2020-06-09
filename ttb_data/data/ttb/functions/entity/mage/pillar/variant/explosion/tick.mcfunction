# called by entity/tick

execute unless entity @s[tag=ttb_pillar_explosion_player_close] run function ttb:entity/mage/pillar/variant/explosion/proximity_checks

# if matches any of above, run proximity checks
execute if entity @s[tag=ttb_pillar_explosion_player_close] run function ttb:entity/mage/pillar/variant/explosion/proximity
