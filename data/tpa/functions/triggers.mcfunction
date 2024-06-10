schedule function tpa:triggers 5

# TPA trigger
scoreboard players enable @a tpa
scoreboard players add @a tpa 0
execute as @a[scores={tpa=1}] run function tpa:tpa-init
execute as @a[scores={tpa=2..}] run function tpa:tpa
scoreboard players reset @a[scores={tpa=1..}] tpa

# TPAccept trigger
execute as @a[scores={tpaccept=1..}] run function tpa:tpaccept
scoreboard players reset @a[scores={tpaccept=1..}] tpaccept
