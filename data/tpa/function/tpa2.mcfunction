tag @s add tpa-source
execute at @a if score @p tpa-id = @s tpa run tag @p add tpa-target
tellraw @s ["",{"text":"Waiting for ","color":"green"},{"selector":"@a[tag=tpa-target]","color":"aqua"},{"text":" to accept... (","color":"green"},{"text":"CANCEL","color":"red","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tpa-cancel"}},{"text":")","color":"green"}]
tellraw @a[tag=tpa-target] ["",{"text":"Player ","color":"green"},{"selector":"@a[tag=tpa-source]","color":"aqua"},{"text":" wants to teleport to you, do you ","color":"green"},{"text":"ACCEPT","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tpa-accept"}},{"text":"?","color":"green"}]
scoreboard players enable @a[tag=tpa-source] tpa-cancel
scoreboard players enable @a[tag=tpa-target] tpa-accept
schedule function tpa:tpa-expire 30s
