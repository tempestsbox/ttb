# called by entity/function/health_bar/pre

scoreboard players operation #health_bar_percentage ttb_data = @s ttb_health
scoreboard players operation #health_bar_percentage ttb_data *= #100 ttb_gamerules
scoreboard players operation #health_bar_percentage ttb_data /= @s ttb_health_max
