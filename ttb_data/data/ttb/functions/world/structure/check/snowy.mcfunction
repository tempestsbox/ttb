# called by world/structure/chunk

function ttb:world/structure/check/pre
data modify block ~ ~ ~ LootTable set value 'ttb:world/structure/check/snowy'
function ttb:world/structure/check/post