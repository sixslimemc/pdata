#> pdata : index/get
#--------------------
# -> index: $listIndexer
# => path: $nbtPath = ""
#--------------------
# <- result: any
#--------------------
# TODO: description
#--------------------
# 1: data exists at {pdata:data players[<index>].<path>} and was retrieved.
# 0: no data exists at {pdata:data players[<index>].<path>}.
#--------------------

data remove storage pdata:out get

scoreboard players reset *x _pdata
execute if data storage pdata:in get.path unless data storage pdata:in {get:{path:""}} run scoreboard players set *x _pdata 1

execute unless score *x _pdata matches 1 store result score *y _pdata run function pdata:_/impl/index/get/main with storage pdata:in get
execute if score *x _pdata matches 1 store result score *y _pdata run function pdata:_/impl/index/get/main.pathed with storage pdata:in get

data remove storage pdata:in get

return run scoreboard players get *y _pdata