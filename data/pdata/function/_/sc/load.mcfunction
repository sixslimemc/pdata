#> pdata:_/sc/load
# @ LOAD

scoreboard objectives add _pdata dummy
scoreboard objectives add pdata.index dummy

# only continue when being re-enabled:
execute unless score *disabled _pdata matches 1 run return 1

scoreboard players reset *disabled _pdata

data modify storage pdata:data players set from storage pdata:_ disabled_storage.players
data remove storage pdata:_ disabled_storage.players