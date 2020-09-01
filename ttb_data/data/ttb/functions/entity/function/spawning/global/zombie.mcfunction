# called by entity/function/spawning/replace_entity

execute unless predicate ttb:world/biome/cave unless predicate ttb:world/biome/deep_cave unless block ~ ~ ~ cave_air if predicate ttb:entity/function/spawning/random_chance run function ttb:entity/function/spawning/entity/ogre
