# called by block/machine/observer_movement/check_direction

execute if block ~ ~2 ~ #ttb:piston[facing=north] run scoreboard players set @s ttb_machine_rot 180
execute if block ~ ~2 ~ #ttb:piston[facing=east] run scoreboard players set @s ttb_machine_rot -90
execute if block ~ ~2 ~ #ttb:piston[facing=south] run scoreboard players set @s ttb_machine_rot 0
execute if block ~ ~2 ~ #ttb:piston[facing=west] run scoreboard players set @s ttb_machine_rot 90

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s ttb_machine_rot
tp @s @s
