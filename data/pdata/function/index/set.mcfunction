#> pdata : index/set
#--------------------
# -> index: $listIndexer
# -> value: any
# => path: $nbtPath = "data"
#--------------------
# <- result: any
#--------------------
# TODO: description
#--------------------
# 1: set {pdata:data players[<index>].<path>}.
# 0: failed to set {pdata:data players[<index>].<path>}.
#--------------------

data remove storage pdata:out set

execute unless data storage pdata:in set.path run data merge storage pdata:in {set:{path:"data"}}

execute store result score *x _pdata run function pdata:_/impl/index/set/main with storage pdata:in set

data remove storage pdata:in set

return run scoreboard players get *x _pdata