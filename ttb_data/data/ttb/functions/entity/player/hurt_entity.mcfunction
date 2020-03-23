#called by advancement detection/entity/player/hurt_entity

scoreboard players reset @s[nbt=!{SelectedItem:{tag:{ttb:{item:"staff"}}}},nbt=!{Inventory:[{Slot:-106b,tag:{ttb:{item:"bright_relic"}}}]}] ttb_relic_damage

advancement revoke @s only ttb:detection/entity/player/hurt_entity
