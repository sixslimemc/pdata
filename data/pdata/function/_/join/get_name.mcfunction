#> pdata:_/join/get_name
#--------------------
# ./main
#--------------------

setblock 0 0 0 barrel{Items:[]}
loot replace block 0 0 0 container.0 loot pdata:_/player_head
data modify storage pdata:_ var.join.entry.username set from block 0 0 0 Items[0].components."minecraft:profile".name