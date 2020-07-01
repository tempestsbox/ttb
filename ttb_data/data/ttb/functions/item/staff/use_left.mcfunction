#called by item/staff/durability/check

execute anchored eyes positioned ^ ^ ^ run function ttb:item/staff/get_hit_entity

execute if data storage ttb:temp item_durability_update{tag:{ttb:{staff:{id:'repulsion'}}}} as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/repulsion/use_left
# execute if data storage ttb:temp item_durability_update{tag:{ttb:{staff:{id:'relativity'}}}} as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/relativity/use_left
# execute if data storage ttb:temp item_durability_update{tag:{ttb:{staff:{id:'extraction'}}}} as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/extraction/use_left
execute if data storage ttb:temp item_durability_update{tag:{ttb:{staff:{id:'refrigerant'}}}} as @e[type=!player,type=!#ttb:item/staff/refrigerant/no_target,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/refrigerant/use_left
# execute if data storage ttb:temp item_durability_update{tag:{ttb:{staff:{id:'infallible'}}}} as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/infallible/use_left
execute if data storage ttb:temp item_durability_update{tag:{ttb:{staff:{id:'shatter'}}}} as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/shatter/use_left
execute if data storage ttb:temp item_durability_update{tag:{ttb:{staff:{id:'temporal'}}}} as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/temporal/use_left
execute if data storage ttb:temp item_durability_update{tag:{ttb:{staff:{id:'captive'}}}} as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/captive/use_left
execute if data storage ttb:temp item_durability_update{tag:{ttb:{staff:{id:'ether'}}}} run function ttb:item/staff/ether/use_left
execute if data storage ttb:temp item_durability_update{tag:{ttb:{staff:{id:'harvest'}}}} as @e[type=#ttb:item/staff/harvest/regress,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/harvest/use_left
# execute if data storage ttb:temp item_durability_update{tag:{ttb:{staff:{id:'saturation'}}}} as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/saturation/use_left
execute if data storage ttb:temp item_durability_update{tag:{ttb:{staff:{id:'mage'}}}} as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/mage/use_left
execute if data storage ttb:temp item_durability_update{tag:{ttb:{staff:{id:'blight'}}}} as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/blight/use_left
# execute if data storage ttb:temp item_durability_update{tag:{ttb:{staff:{id:'skitter'}}}} as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/skitter/use_left
execute if data storage ttb:temp item_durability_update{tag:{ttb:{staff:{id:'netherknight'}}}} as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/netherknight/use_left
# execute if data storage ttb:temp item_durability_update{tag:{ttb:{staff:{id:'spirit'}}}} as @e[type=!player,type=!#ttb:sprite,tag=ttb_hit_entity,limit=1] at @s run function ttb:item/staff/spirit/use_left

tag @e[type=!player,type=!#ttb:sprite,type=!ender_dragon,tag=ttb_hit_entity,limit=1] remove ttb_hit_entity
