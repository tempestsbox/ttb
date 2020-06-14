# called by world/structure/chunk

function ttb:world/structure/check_spawn/pre
data modify block ~ ~ ~ LootTable set value 'ttb:world/structure/check_spawn/ore'
function ttb:world/structure/check_spawn/post
