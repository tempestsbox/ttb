#called by item/<item>/craft

playsound entity.firework_rocket.blast player @a[distance=..20] ~ ~ ~ 1 2 1
playsound entity.firework_rocket.launch player @a[distance=..20] ~ ~ ~ 1 0.5 1

particle end_rod ~ ~ ~ .15 .2 .1 .05 20 force @a
