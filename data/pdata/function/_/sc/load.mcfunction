#> pdata:_/sc/load
# @ LOAD

scoreboard objectives add _pdata dummy



# DEBUG
scoreboard players reset *init _pdata

execute unless score *init _pdata matches 1 run function pdata:_/sc/init