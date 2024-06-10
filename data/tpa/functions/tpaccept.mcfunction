teleport @a[tag=tpa-source] @s

tellraw @a[tag=tpa-source] ["",{"text":"Teleported to other player","color":"green"}]

tag @a remove tpa-source
tag @a remove tpa-target
schedule clear tpa:tpa-expire
