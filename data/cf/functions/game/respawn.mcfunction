#respawn timer
execute at @a[nbt={DeathTime:1s}] run scoreboard players operation @p spectateTimer = @p currentDeaths
execute at @a[scores={spectateTimer=1..},nbt={playerGameType:0,DeathTime:0s}] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["respawn"]}
execute at @a[scores={spectateTimer=1..},nbt={DeathTime:0s}] run tp @p @e[tag=respawn,distance=..1,limit=1]
execute at @a[scores={spectateTimer=0},nbt={DeathTime:0s}] run kill @e[tag=respawn,limit=1,distance=..1]   
execute run gamemode spectator @a[scores={spectateTimer=1..},nbt={DeathTime:0s}]
execute if score data ticks matches 0 at @a[scores={spectateTimer=0..},nbt={DeathTime:0s}] run scoreboard players remove @p spectateTimer 1
execute run gamemode survival @a[scores={spectateTimer=0},nbt={playerGameType:3,DeathTime:0s}]