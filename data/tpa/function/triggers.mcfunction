schedule function tpa:triggers 5

# TPA trigger
scoreboard players enable @a tpa
scoreboard players add @a tpa 0
execute as @a[scores={tpa=1}] run function tpa:tpa-init
execute as @a[scores={tpa=2..}] run function tpa:tpa
scoreboard players reset @a[scores={tpa=1..}] tpa

# TPA-accept trigger
execute as @a[scores={tpa-accept=1..}] run function tpa:tpa-accept
scoreboard players reset @a[scores={tpa-accept=1..}] tpa-accept

# TPA-cancel trigger
execute as @a[scores={tpa-cancel=1..}] run function tpa:tpa-cancel
scoreboard players reset @a[scores={tpa-cancel=1..}] tpa-cancel
