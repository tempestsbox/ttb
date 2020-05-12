function ttb:entity/deadlock/summon
replaceitem entity @e[type=stray,tag=ttb_deadlock,distance=...1,limit=1] weapon.mainhand bow{Enchantments:[{id:"power",lvl:2}]} 1
data modify entity @e[type=stray,tag=ttb_deadlock,distance=...1,limit=1] Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 50d
