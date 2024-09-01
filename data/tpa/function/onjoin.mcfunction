schedule function tpa:onjoin 10

# Make sure all online players have a onjoin score set
scoreboard players add @a tpa-onjoin 0

# Reset tpa-source/tpa-target tag for players with a onjoin score of 0
tag @a[scores={tpa-onjoin=0}] remove tpa-source
tag @a[scores={tpa-onjoin=0}] remove tpa-target

# Set onjoin score to 1 only for online players
scoreboard players set * tpa-onjoin 0
scoreboard players set @a tpa-onjoin 1
