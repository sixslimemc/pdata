#> pdata : index/get
#--------------------
# -> index: six::ListIndexer
# -> path?: six::StructPath
#--------------------
# <- result: any
#--------------------
# TODO: description
#--------------------
# 1: data exists at {pdata:data players[<index>].<path>} and was retrieved.
# 0: no data exists at {pdata:data players[<index>].<path>}.
#--------------------

data remove storage pdata:out get

scoreboard players set *get.path_specified _pdata 0
execute if data storage pdata:in get.path unless data storage pdata:in get{path:""} run scoreboard players set *get.path_specified _pdata 1

execute unless score *get.path_specified _pdata matches 1 store result score *x _pdata run function pdata:_/impl/index/get/main with storage pdata:in get
execute if score *get.path_specified _pdata matches 1 store result score *x _pdata run function pdata:_/impl/index/get/main.pathed with storage pdata:in get

data remove storage pdata:in get
scoreboard players reset *get.path_specified

return run scoreboard players get *y _pdata