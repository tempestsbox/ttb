#called by block/machine/color_check

scoreboard players set store ttb_ench_level 0
scoreboard players set @s ttb_ench_level 0
scoreboard players set @s ttb_ascended 0
scoreboard players set @s ttb_reduced 0
scoreboard players set @s ttb_ench_quarry 0
scoreboard players set @s ttb_ench_wither 0
scoreboard players set @s ttb_ench_fortune 0
scoreboard players set @s ttb_ench_silk 0
scoreboard players set @s ttb_ench_smelt 0
scoreboard players set @s ttb_ench_power 0

execute if data block ~ ~ ~ Items[{tag:{ttb:{item:"vulcaanium_crystal"}}}] run function ttb:block/machine/get_power_vulcaanium

execute if data block ~ ~ ~ Items[{tag:{ttb:{item:"amethyst_crystal"}}}] run function ttb:block/machine/get_power_amethyst

execute positioned ^ ^ ^-1 align xyz if entity @e[type=armor_stand,tag=ttb_tempite_wire,dx=0] run tag @s add ttb_tempite_wire_valid
execute if entity @s[tag=ttb_tempite_wire_valid] if entity @e[type=armor_stand,tag=ttb_tempite_stone,distance=..16,scores={ttb_tempite_amnt=1..},sort=nearest,limit=1] run function ttb:block/machine/cost_check
tag @s remove ttb_tempite_wire_valid
