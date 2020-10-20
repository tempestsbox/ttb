# called by entity/tick

# particle
execute anchored eyes run particle ash ^ ^ ^ .15 .15 .15 0 10 normal @a

# timer
scoreboard players add @s ttb_age 1

# proximity checks
execute unless entity @s[scores={ttb_age=100..,ttb_exp_pil_time=1..}] run function ttb:entity/mage/pillar/variant/explosion/proximity_checks
scoreboard players operation @s[scores={ttb_age=100}] ttb_exp_pil_time = $max ttb_exp_pil_time

# if matches any of above, run proximity checks
execute if entity @s[scores={ttb_exp_pil_time=1..}] run function ttb:entity/mage/pillar/variant/explosion/pre_explode
