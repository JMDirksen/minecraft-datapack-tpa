tellraw @a[tag=tpa-source] ["",{"text":"Teleport request has expired","color":"red"}]
tellraw @a[tag=tpa-target] ["",{"text":"Teleport request has expired","color":"red"}]
tag @a remove tpa-source
tag @a remove tpa-target
scoreboard players reset * tpa-accept
scoreboard players reset * tpa-cancel
