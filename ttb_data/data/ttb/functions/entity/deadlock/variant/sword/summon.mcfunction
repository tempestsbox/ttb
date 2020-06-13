function ttb:entity/deadlock/summon
execute align xyz run replaceitem entity @e[type=stray,tag=ttb_deadlock,dx=0,limit=1] weapon.mainhand iron_sword{Enchantments:[{id:"knockback",lvl:1}]} 1
execute align xyz run replaceitem entity @e[type=stray,tag=ttb_deadlock,dx=0,limit=1] weapon.offhand shield{BlockEntityTag:{Base:5,Patterns:[{Pattern:'dls',Color:13},{Pattern:'flo',Color:9},{Pattern:'mr',Color:13}]}} 1
