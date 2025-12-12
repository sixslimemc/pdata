#> pdata:_/main/join/trigger
#--------------------
# _/subscriber/doorman/join AS joiner
#--------------------

data modify storage pdata:_ t.join.uuid set from entity @s UUID

# check exists, {set ..uuid}
data modify storage pdata:in get.index.uuid set from storage pdata:_ t.join.uuid
execute store result score *join.exists _pdata run function pdata:index/get
execute if score *join.exists _pdata matches 1 run data modify storage pdata:_ t.join.entry set from storage pdata:out get.result

# register:
execute unless score *join.exists _pdata matches 1 run function pdata:_/main/join/register

# get name:
execute in varchunk:chunk run function pdata:_/main/join/get_name

# set back:
execute store result score @s pdata.index run data get storage pdata:_ t.join.entry.index
function pdata:_/main/join/set_entry with storage pdata:_ t.join.entry

# HOOK <> register:
execute unless score *join.exists _pdata matches 1 run function #pdata:hook/register

data remove storage pdata:_ t.join
scoreboard players reset *join.exists _pdata