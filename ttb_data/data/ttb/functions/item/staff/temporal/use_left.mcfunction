# called by item/staff/use_left

# audiovisuals
playsound entity.enderman.teleport player @a[distance=..16] ~ ~ ~ 1 2 1
playsound entity.enderman.teleport player @a[distance=..16] ~ ~ ~ 1 1 1
playsound entity.enderman.teleport player @a[distance=..16] ~ ~ ~ 1 0 1
particle enchant ~ ~ ~ .5 .5 .5 1 500 normal @a

# nerdy message to nearby players
tellraw @a[distance=..6] {"translate":"item.ttb.temporal_staff.displaced_entity","with":[{"selector":"@s"}],"color":"yellow","italic":true}

# spread
function ttb:item/staff/temporal/spread_entity
