#> pdata:_/main/tick
#--------------------
# _/entrypoints/main
#--------------------
schedule function pdata:_/main/tick 1t

execute unless score *join_trigger _pdata matches 1 run return 0

scoreboard players reset *join_trigger _pdata
execute as @a[tag=_pdata.joined] at @s run function pdata:_/main/join/trigger