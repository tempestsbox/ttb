# called by entity/function/health_bar/pre

# pre
forceload add ~ ~

# concatenate
tag @s add ttb_health_bar_concatenate
execute unless score #health_bar_percentage ttb_data matches 26.. run setblock ~ ~ ~ oak_sign{Text1:'[{"text":"","color":"#E74C3C"},{"translate":"text.ttb.entity.health_bar","with":[{"selector":"@e[tag=ttb_health_bar_vehicle_target,limit=1]","color":"#EC7063"},{"score":{"name":"@e[tag=ttb_health_bar_vehicle_target,limit=1]","objective":"ttb_health"},"color":"#EC7063"},{"score":{"name":"@e[tag=ttb_health_bar_vehicle_target,limit=1]","objective":"ttb_health_max"},"color":"#EC7063"}]}]'}
execute unless score #health_bar_percentage ttb_data matches 51.. run setblock ~ ~ ~ oak_sign{Text1:'[{"text":"","color":"#F5B041"},{"translate":"text.ttb.entity.health_bar","with":[{"selector":"@e[tag=ttb_health_bar_vehicle_target,limit=1]","color":"#F39C12"},{"score":{"name":"@e[tag=ttb_health_bar_vehicle_target,limit=1]","objective":"ttb_health"},"color":"#F39C12"},{"score":{"name":"@e[tag=ttb_health_bar_vehicle_target,limit=1]","objective":"ttb_health_max"},"color":"#F39C12"}]}]'}
execute unless score #health_bar_percentage ttb_data matches 76.. run setblock ~ ~ ~ oak_sign{Text1:'[{"text":"","color":"#F4D03F"},{"translate":"text.ttb.entity.health_bar","with":[{"selector":"@e[tag=ttb_health_bar_vehicle_target,limit=1]","color":"yellow"},{"score":{"name":"@e[tag=ttb_health_bar_vehicle_target,limit=1]","objective":"ttb_health"},"color":"yellow"},{"score":{"name":"@e[tag=ttb_health_bar_vehicle_target,limit=1]","objective":"ttb_health_max"},"color":"yellow"}]}]'}
setblock ~ ~ ~ oak_sign{Text1:'[{"text":"","color":"#58D68D"},{"translate":"text.ttb.entity.health_bar","with":[{"selector":"@e[tag=ttb_health_bar_vehicle_target,limit=1]","color":"#2ECC71"},{"score":{"name":"@e[tag=ttb_health_bar_vehicle_target,limit=1]","objective":"ttb_health"},"color":"#2ECC71"},{"score":{"name":"@e[tag=ttb_health_bar_vehicle_target,limit=1]","objective":"ttb_health_max"},"color":"#2ECC71"}]}]'}
tag @s remove ttb_health_bar_concatenate

# set name
data modify entity @s CustomName set from block ~ ~ ~ Text1

# post
setblock ~ ~ ~ air
forceload remove ~ ~
