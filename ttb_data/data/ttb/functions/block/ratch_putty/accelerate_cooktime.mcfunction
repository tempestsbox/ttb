# called by block/ratch_putty/tick

execute store result score #ratch_putty_cooktime ttb_data run data get block ~ ~ ~ CookTime
execute store result score #ratch_putty_cooktimetotal ttb_data run data get block ~ ~ ~ CookTimeTotal
scoreboard players remove #ratch_putty_cooktimetotal ttb_data 2
execute unless score #ratch_putty_cooktime ttb_data >= #ratch_putty_cooktimetotal ttb_data store result block ~ ~ ~ CookTime short -1 run data get block ~ ~ ~ CookTime -1.0000000001

execute if score #ratch_putty_cooktime ttb_data matches 1.. run scoreboard players add @s ttb_ratch_putty 1
execute if score @s ttb_ratch_putty >= $max ttb_ratch_putty run function ttb:block/ratch_putty/decay
