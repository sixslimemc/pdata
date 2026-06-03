#> pdata:_/impl/index/get/main

$return run data modify storage pdata:out get.result set from storage pdata:data players[$(index)]

# DEBUG:
tellraw @a ["OUT: ", {'storage':'pdata:out', 'nbt':'get.result'}]