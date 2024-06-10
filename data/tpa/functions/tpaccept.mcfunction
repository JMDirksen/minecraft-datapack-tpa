teleport @a[tag=tpa-source] @s

tellraw @a[tag=tpa-target] ["",{"text":"Teleport from ","color":"green"},{"selector":"@a[tag=tpa-source]","color":"aqua"},{"text":" accepted","color":"green"}]
tellraw @a[tag=tpa-source] ["",{"text":"Teleported to ","color":"green"},{"selector":"@a[tag=tpa-target]","color":"aqua"}]

tag @a remove tpa-source
tag @a remove tpa-target
schedule clear tpa:tpa-expire
