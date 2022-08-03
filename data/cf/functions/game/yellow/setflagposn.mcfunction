#set flag pos yellow

data modify block 3 0 0 Items[] set value {id:"compass",Count:1b,tag:{track_flag:1b,track_flag_yellow:1b,LodestoneDimension:"minecraft:the_nether",LodestoneTracked:0b,LodestonePos:{X:0,Y:0,Z:0}}}

execute store result block 3 0 0 Items[0].tag.LodestonePos.X int 1 run scoreboard players get @s xn
execute store result block 3 0 0 Items[0].tag.LodestonePos.Y int 1 run scoreboard players get @s yn
execute store result block 3 0 0 Items[0].tag.LodestonePos.Z int 1 run scoreboard players get @s zn