function ttb:entity/function/spawner/deadlock
data modify block ~ ~ ~ SpawnData.HandItems[0] set value {id:"bow",Count:1b,tag:{Enchantments:[{id:"power",lvl:2}]}}
data modify block ~ ~ ~ SpawnData.Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 50d

function ttb:entity/function/structure/post_summon
