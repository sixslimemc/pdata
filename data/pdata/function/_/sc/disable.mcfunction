#> pdata:_/sc/disable
# @ DISABLE

data modify storage pdata:_ disabled_storage.players set from storage pdata:data players
data remove storage pdata:data players
scoreboard players set *disabled _pdata 1