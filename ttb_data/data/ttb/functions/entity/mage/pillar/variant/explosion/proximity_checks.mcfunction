# called by entity/mage/pillar/variant/explosion/tick

# if it can't find any nearby, something must be up 👀🧨
execute unless entity @e[type=armor_stand,tag=ttb_pillar_explosion,distance=1..9,limit=1] run tag @s add ttb_pillar_explosion_player_close
# if arrow, explode
execute positioned ~ ~.5 ~ if entity @e[type=#arrows,distance=..1.5,nbt={inGround:0b},limit=1] run tag @s add ttb_pillar_explosion_player_close
# player proximity
execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..6,limit=1] run tag @s add ttb_pillar_explosion_player_close
