#> pdata : self/set
# % AS [self]: type=player
#--------------------
# -> value: any
# => path: $nbtPath = "data"
#--------------------
# .
#--------------------
# TODO: description
#--------------------
# 1: data exists at {pdata:data players[<index>].<path>} and was retrieved.
# 0: no data exists at {pdata:data players[<index>].<path>}.
#--------------------

execute store result storage pdata:in set.index int 1 run scoreboard players get @s pdata.index
function pdata:index/set