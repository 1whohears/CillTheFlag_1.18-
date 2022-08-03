#reset the game

function cf:setup/killflags

#reset scoreboard
scoreboard objectives setdisplay sidebar
scoreboard players set data newWorldMode 0
scoreboard players set blue flagState 0
scoreboard players set red flagState 0
scoreboard players set green flagState 0
scoreboard players set yellow flagState 0
scoreboard players set data defenseTime 600
scoreboard players set data attackTime 1800
scoreboard players set data teamnum 2
scoreboard players set data enablekits 0

execute as @a run trigger kit1
execute as @a run trigger kit2
execute as @a run trigger kit3
execute as @a run trigger kit4
execute as @a run trigger kit5
execute as @a run trigger joinblue
execute as @a run trigger joinred
execute as @a run trigger joingreen
execute as @a run trigger joinyellow
execute as @a run trigger placeflag
execute as @a run trigger undoflag
execute as @a run trigger trackblue
execute as @a run trigger trackred
execute as @a run trigger trackgreen
execute as @a run trigger trackyellow
scoreboard players reset @a kit1
scoreboard players reset @a kit2
scoreboard players reset @a kit3
scoreboard players reset @a kit4
scoreboard players reset @a kit5
scoreboard players reset @a joinblue
scoreboard players reset @a joinred
scoreboard players reset @a joingreen
scoreboard players reset @a joinyellow
scoreboard players reset @a placeflag
scoreboard players reset @a undoflag
scoreboard players reset @a trackblue
scoreboard players reset @a trackred
scoreboard players reset @a trackgreen
scoreboard players reset @a trackyellow
scoreboard players reset @a playertp

#reset tags
tag @a remove captain
tag @a remove player

#reset teams
team empty blue
team empty red
team empty green
team empty yellow

#other
worldborder set 59999968 0
clear @a minecraft:compass{track_flag:1b}
gamemode survival @a[nbt={playerGameType:3}]