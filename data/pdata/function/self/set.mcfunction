#> pdata : self/set
# % AS [self]: type=player
#--------------------
# -> value: any
# -> path: $nbtPath
# => operation: $nbtOperation = "set"
#--------------------
# .
#--------------------
# TODO: description
#--------------------
# 1: set {pdata:data players[<index>].data.<path>}.
# 0: failed to set {pdata:data players[<index>].data.<path>}.
#--------------------

execute store result storage pdata:in set.index int 1 run scoreboard players get @s pdata.index
function pdata:index/set