#called by block/machine/mysterious

execute if data block ~ ~ ~ Items[{tag:{ttb:{Enchantments:[{id:"quarry"}]}}}] run scoreboard players operation @s ttb_ench_quarry = @s ttb_ascended
scoreboard players add @s ttb_ench_quarry 1

execute if data block ~ ~ ~ Items[{tag:{ttb:{Enchantments:[{id:"wither"}]}}}] run scoreboard players operation @s ttb_ench_wither = @s ttb_ascended
scoreboard players add @s ttb_ench_wither 1

execute store result score @s ttb_ench_fortune run data get block ~ ~ ~ Items[{tag:{ttb:{Enchantments:[{id:"fortune"}]}}}]

execute store result score @s ttb_ench_silk run data get block ~ ~ ~ Items[{tag:{ttb:{Enchantments:[{id:"silk_touch"}]}}}]

execute store result score @s ttb_ench_smelt run data get block ~ ~ ~ Items[{tag:{ttb:{Enchantments:[{id:"smelting"}]}}}]

execute store result score @s ttb_ench_power run data get block ~ ~ ~ Items[{tag:{ttb:{Enchantments:[{id:"power"}]}}}]

scoreboard players operation @s ttb_ench_level += @s ttb_ench_quarry
scoreboard players operation @s ttb_ench_level += @s ttb_ench_wither
scoreboard players operation @s ttb_ench_level += @s ttb_ench_fortune
scoreboard players operation @s ttb_ench_level += @s ttb_ench_silk
scoreboard players operation @s ttb_ench_level += @s ttb_ench_smelt
scoreboard players operation @s ttb_ench_level += @s ttb_ench_power

scoreboard players operation @s ttb_ench_store += @s ttb_ench_quarry
scoreboard players operation @s ttb_ench_store += @s ttb_ench_wither
scoreboard players operation @s ttb_ench_store += @s ttb_ench_fortune
scoreboard players operation @s ttb_ench_store += @s ttb_ench_silk
scoreboard players operation @s ttb_ench_store += @s ttb_ench_smelt
scoreboard players operation @s ttb_ench_store += @s ttb_ench_power
