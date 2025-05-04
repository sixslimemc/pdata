#> pdata:_/join/main
#--------------------
# ../subscriber/doorman/on_join AS joiner
#--------------------

data modify storage pdata:_ var.join.uuid set from entity @s UUID

# check exists, {set ..uuid}
data modify storage pdata:in get.index.uuid set from storage pdata:_ var.join.uuid
execute store result score *join.exists _pdata run function pdata:index/get
execute if score *join.exists _pdata matches 1 run data modify storage pdata:_ var.join.entry set from storage pdata:out get.result

# register:
execute unless score *join.exists _pdata matches 1 run function pdata:_/join/register/main

# get name:
execute in varchunk:chunk run function pdata:_/join/get_name

execute store result score @s pdata.index run data get storage pdata:_ var.join.entry.index

function pdata:_/join/set_entry with storage pdata:_ var.join.entry

data remove storage pdata:_ var.join
scoreboard players reset *join.exists _pdata