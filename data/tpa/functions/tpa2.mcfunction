tag @s add tpa-source
execute at @a if score @p tpa-id = @s tpa run tag @p add tpa-target
tellraw @s ["",{"text":"Waiting for ","color":"green"},{"selector":"@a[tag=tpa-target]","color":"aqua"},{"text":" to accept...","color":"green"}]
tellraw @a[tag=tpa-target] ["",{"text":"Player ","color":"green"},{"selector":"@a[tag=tpa-source]","color":"aqua"},{"text":" wants to teleport to you, do you ","color":"green"},{"text":"ACCEPT","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tpaccept"}},{"text":"?","color":"green"}]
scoreboard players enable @a[tag=tpa-target] tpaccept
schedule function tpa:tpa-expire 30s
