#> pdata:_/main/join/register
#--------------------
# ./trigger
#--------------------

execute store result score *x _pdata if data storage pdata:data players[]
data modify storage pdata:_ t.join.entry set value {index:0, uuid:[], guuid:"", username:"", data:{}}

execute store result storage pdata:_ t.join.entry.index int 1 run scoreboard players get *x _pdata
data modify storage pdata:_ t.join.entry.uuid set from storage pdata:_ t.join.uuid

data modify storage six:in guuid.uuid set from storage pdata:_ t.join.uuid
function six:uuid/guuid
data modify storage pdata:_ t.join.entry.guuid set from storage six:out guuid.result

# add empty entry to {@data players} to be set by join main:
data modify storage pdata:data players append from storage pdata:_ t.join.entry