summon zombie ~ ~ ~ {CustomName:'{"translate":"entity.ttb.mage"}',CustomNameVisible:0b,Tags:["ttb_entity","ttb_mage","ttb_vehicle"],IsBaby:0b,ArmorItems:[{},{},{id:stick,Count:1b,tag:{Enchantments:[{id:thorns,lvl:7s}]}},{id:barrier,Count:1b,tag:{CustomModelData:6830001}}],HandDropChances:[0F,0F],ArmorDropChances:[0F,0F,0F,0F],Attributes:[{Name:generic.maxHealth,Base:150d},{Name:generic.followRange,Base:0d},{Name:zombie.spawnReinforcements,Base:0d},{Name:generic.attackDamage,Base:6d},{Name:generic.knockbackResistance,Base:1d}],Health:150f,Silent:1b,DeathLootTable:"ttb:entities/mage",ActiveEffects:[{Id:12b,Amplifier:0b,Duration:999999},{Id:14b,Amplifier:0b,Duration:999999}]}
loot replace entity @e[type=zombie,tag=ttb_mage,sort=nearest,limit=1] weapon.mainhand loot ttb:items/mage_staff

function ttb:entity/function/spawning/remove_previous_entity
