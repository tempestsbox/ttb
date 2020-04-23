summon area_effect_cloud ~ ~ ~ {Tags:["ttb_entity","ttb_uuid"]}
data modify block ~ ~ ~ Items[{Slot:16b}].tag.ttb.unstackable set from entity @e[type=area_effect_cloud,tag=ttb_uuid,sort=nearest,limit=1] UUID
