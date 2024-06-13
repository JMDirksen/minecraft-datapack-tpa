tellraw @a[tag=tpa-source] ["",{"text":"Teleport request canceled","color":"red"}]
tellraw @a[tag=tpa-target] ["",{"text":"Teleport request canceled","color":"red"}]
tag @a remove tpa-source
tag @a remove tpa-target
scoreboard players reset * tpa-accept
schedule clear tpa:tpa-expire
