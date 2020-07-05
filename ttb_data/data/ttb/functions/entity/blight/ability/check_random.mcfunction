# called by entity/blight/ability_check

execute if entity @s[nbt={Item:{tag:{ttb:{random:{id:'dodge'}}}}}] run scoreboard players set dodge ttb_attack 1
execute if entity @s[nbt={Item:{tag:{ttb:{random:{id:'freeze'}}}}}] unless entity @e[type=area_effect_cloud,tag=ttb_blight_freeze,distance=..10,limit=1] run scoreboard players set freeze ttb_attack 1

kill @s
