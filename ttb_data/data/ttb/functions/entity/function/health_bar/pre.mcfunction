# called by entity/clock2s

execute positioned ~ ~-1 ~ run tag @e[tag=ttb_health_bar_vehicle,dx=0,sort=nearest,limit=1] add ttb_health_bar_vehicle_target

execute as @e[tag=ttb_health_bar_vehicle,tag=ttb_health_bar_vehicle_target,limit=1] run function ttb:entity/function/health_bar/calculate_percentage
execute in overworld positioned 29999984 255 29999984 run function ttb:entity/function/health_bar/set

tag @e[tag=ttb_health_bar_vehicle,tag=ttb_health_bar_vehicle_target,limit=1] remove ttb_health_bar_vehicle_target
