#set flag pos red

data modify block 1 -64 0 Items[] set value {id:"compass",Count:1b,tag:{track_flag:1b,track_flag_red:1b,LodestoneDimension:"minecraft:overworld",LodestoneTracked:0b,LodestonePos:{X:0,Y:0,Z:0}}}

execute store result block 1 -64 0 Items[0].tag.LodestonePos.X int 1 run scoreboard players get @s x
execute store result block 1 -64 0 Items[0].tag.LodestonePos.Y int 1 run scoreboard players get @s y
execute store result block 1 -64 0 Items[0].tag.LodestonePos.Z int 1 run scoreboard players get @s z