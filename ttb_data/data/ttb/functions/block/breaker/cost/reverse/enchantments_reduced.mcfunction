#called by block/breaker/cost/enchantments

scoreboard players operation @s ttb_ench_store /= @s ttb_reduced
scoreboard players operation @s ttb_tempite_amnt -= @s ttb_ench_store
