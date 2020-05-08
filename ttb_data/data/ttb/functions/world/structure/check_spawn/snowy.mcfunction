#called by world/generation/chunk/structure_check

execute if block ~ 2 ~ bedrock run function ttb:world/structure/check_spawn/snowy_uncommon
# execute unless entity @s[tag=ttb_structure_bedrock_passed] run another one
