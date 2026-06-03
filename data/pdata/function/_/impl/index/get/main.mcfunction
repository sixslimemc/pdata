#> pdata:_/impl/index/get/main

$say pdata:data players[$(index)]
$return run data modify storage pdata:out get.result set from storage pdata:data players[$(index)]
