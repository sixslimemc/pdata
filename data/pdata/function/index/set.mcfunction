#> pdata : index/set
#--------------------
# -> index: six::ListIndexer
# -> path: six::StructPath
# -> value: any
# -> operation?: six::NbtOperation = "set"
#--------------------
# .
#--------------------
# TODO: description
# <path> is relative to {.data} in the entry.
#--------------------
# 1: set {pdata:data players[<index>].data.<path>}.
# 0: failed to set {pdata:data players[<index>].data.<path>}.
#--------------------

execute unless data storage pdata:in set.operation run data modify storage pdata:in set.operation set value "set"

execute store result score *x _pdata run function pdata:_/impl/index/set/main with storage pdata:in set

data remove storage pdata:in set

return run scoreboard players get *x _pdata