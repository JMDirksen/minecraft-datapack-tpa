teleport @a[tag=tpa-source] @s

tellraw @a[tag=tpa-source] ["",{"text":"Teleported to other player","color":"green"}]
tellraw @a[tag=tpa-target] ["",{"text":"Teleport accepted","color":"green"}]

tag @a remove tpa-source
tag @a remove tpa-target
schedule clear tpa:tpa-expire
