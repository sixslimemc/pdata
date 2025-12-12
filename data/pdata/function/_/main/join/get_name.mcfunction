#> pdata:_/main/join/get_name
#--------------------
# ./trigger
#--------------------

setblock 0 0 0 barrel{Items:[]}
loot replace block 0 0 0 container.0 loot pdata:_/player_head
data modify storage pdata:_ t.join.entry.username set from block 0 0 0 Items[0].components."minecraft:profile".name