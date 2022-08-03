#phase 0 setup

execute if score data teamnum matches 2 run function cf:teams/trigger1
execute if score data teamnum matches 4 run function cf:teams/trigger2

execute if score data newWorldMode matches 1 run gamemode adventure @a[nbt={playerGameType:0}]

execute if score data enablekits matches 1 run function cf:kits/triggerkits