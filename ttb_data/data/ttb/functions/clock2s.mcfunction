#clock that runs every 2s

execute as @e[type=zombie,tag=ttb_mage] at @s run function ttb:entity/mage/clock2s

#reschedule
schedule function ttb:clock2s 2s replace
