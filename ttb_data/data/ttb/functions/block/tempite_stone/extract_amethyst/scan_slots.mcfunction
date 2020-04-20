#called by block/tempite_stone/tick

execute unless data block ~ ~ ~ Items[{Slot:0b,tag:{ttb:{item:"amethyst"}}}] unless data block ~ ~ ~ Items[{Slot:1b,tag:{ttb:{item:"amethyst"}}}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{ttb:{item:"amethyst"}}}] unless data block ~ ~ ~ Items[{Slot:3b,tag:{ttb:{item:"amethyst"}}}] if data block ~ ~ ~ Items[{Slot:4b,tag:{ttb:{item:"amethyst"}}}] run function ttb:block/tempite_stone/extract_amethyst/slot/4
execute unless data block ~ ~ ~ Items[{Slot:0b,tag:{ttb:{item:"amethyst"}}}] unless data block ~ ~ ~ Items[{Slot:1b,tag:{ttb:{item:"amethyst"}}}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{ttb:{item:"amethyst"}}}] if data block ~ ~ ~ Items[{Slot:3b,tag:{ttb:{item:"amethyst"}}}] run function ttb:block/tempite_stone/extract_amethyst/slot/3
execute unless data block ~ ~ ~ Items[{Slot:0b,tag:{ttb:{item:"amethyst"}}}] unless data block ~ ~ ~ Items[{Slot:1b,tag:{ttb:{item:"amethyst"}}}] if data block ~ ~ ~ Items[{Slot:2b,tag:{ttb:{item:"amethyst"}}}] run function ttb:block/tempite_stone/extract_amethyst/slot/2
execute unless data block ~ ~ ~ Items[{Slot:0b,tag:{ttb:{item:"amethyst"}}}] if data block ~ ~ ~ Items[{Slot:1b,tag:{ttb:{item:"amethyst"}}}] run function ttb:block/tempite_stone/extract_amethyst/slot/1
execute if data block ~ ~ ~ Items[{Slot:0b,tag:{ttb:{item:"amethyst"}}}] run function ttb:block/tempite_stone/extract_amethyst/slot/0

scoreboard players operation @s ttb_tempite_amnt += $amethyst ttb_tempite_amnt
execute if score @s ttb_tempite_amnt > $max ttb_tempite_amnt run function ttb:block/tempite_stone/extract_amethyst/reverse

execute if score @s ttb_tempite_amnt <= $max ttb_tempite_amnt run scoreboard players operation @s ttb_machine_cool = $hopper ttb_machine_cool
