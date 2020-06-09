# called by entity/mage/attack_check

execute if entity @s[nbt={Item:{tag:{ttb:{random:{id:'area_effect_cloud'}}}}}] unless entity @e[type=area_effect_cloud,tag=ttb_mage_area_effect_cloud,distance=...1,limit=1] run function ttb:entity/mage/ability/area_effect_cloud
execute if entity @s[nbt={Item:{tag:{ttb:{random:{id:'pillars_explosion'}}}}}] unless entity @e[type=armor_stand,tag=ttb_pillar,distance=..10,limit=1] run function ttb:entity/mage/ability/pillars_explosion
execute if entity @s[nbt={Item:{tag:{ttb:{random:{id:'flames'}}}}}] unless entity @e[type=vex,tag=ttb_flame,distance=..8,limit=1] positioned ~ ~2 ~ run function ttb:entity/mage/ability/flames
execute if entity @s[nbt={Item:{tag:{ttb:{random:{id:'magic_ball'}}}}}] positioned ~ ~2 ~ run function ttb:entity/mage/ability/magic_ball
execute if entity @s[nbt={Item:{tag:{ttb:{random:{id:'fire'}}}}}] if score mobGriefing ttb_gamerules matches 1 if score doFireTick ttb_gamerules matches 1 run function ttb:entity/mage/ability/fire

kill @s
