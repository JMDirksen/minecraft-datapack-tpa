schedule function tpa:playerids 1s

scoreboard players add @a tpa-id 0
scoreboard players operation #playerids tpa-id > @a tpa-id
scoreboard players add #playerids tpa-id 1
scoreboard players operation @a[scores={tpa-id=0},limit=1] tpa-id = #playerids tpa-id

# Reset id offline players
execute as @a run scoreboard players operation @s tpa-id-temp = @s tpa-id
scoreboard players reset * tpa-id
scoreboard players set #playerids tpa-id 1
execute as @a run scoreboard players operation @s tpa-id = @s tpa-id-temp
