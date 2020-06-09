# called by entity/mage/clock2s

execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..6,nbt={OnGround:1b},limit=1] run function ttb:entity/mage/attack/player_close
execute unless entity @s[tag=ttb_mage_attack_check_passed] if entity @a[gamemode=!creative,gamemode=!spectator,distance=5..14,nbt={OnGround:1b},limit=1] run function ttb:entity/mage/attack/player_mid
execute unless entity @s[tag=ttb_mage_attack_check_passed] if entity @a[gamemode=!creative,gamemode=!spectator,distance=4..18,nbt={OnGround:1b},limit=1] run function ttb:entity/mage/attack/player_present

execute if entity @s[tag=ttb_mage_attack_check_passed] as @e[type=item,distance=..1,nbt={Item:{tag:{ttb:{random:{}}}}},limit=1] run function ttb:entity/mage/attack/check_random
tag @s remove ttb_mage_attack_check_passed
