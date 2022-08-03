#init phase 1

scoreboard players set data phase 1

scoreboard players set data ticks 0
scoreboard players set data seconds 0

#Initial setup for any title commands
title @a times 5 30 5
title @a title {"text":"DEFENSE TIME!","color":"blue"}
tellraw @a {"text":"DEFENSE TIME!!","bold":true,"color":"blue"}

#make center marker invisible
data modify entity @e[tag=center,limit=1] CustomNameVisible set value 0b

#give all current players a player tag
tag @a[team=blue] add player
tag @a[team=red] add player
tag @a[team=green] add player
tag @a[team=yellow] add player

#put players back in survival
gamemode survival @a[tag=player]

#other scoreboard setup
execute at @a[tag=player] run scoreboard players operation @p initDeaths = @p totalDeaths
scoreboard players set @a[tag=player] currentDeaths 0
scoreboard players set @a[tag=player] spectateTimer 0
execute at @a[tag=player] run scoreboard players operation @p currentDeaths += @p totalDeaths
execute at @a[tag=player] run scoreboard players operation @p currentDeaths -= @p initDeaths
scoreboard players set @a[tag=player] villagerKills 0
scoreboard players set @a[tag=player] leave 0

#set world border
execute if score data teamnum matches 2 run worldborder set 1000 0
execute if score data teamnum matches 4 run worldborder set 1500 0
execute at @e[tag=center,limit=1] run worldborder center ~ ~
worldborder damage amount 1
worldborder damage buffer 2
worldborder warning distance 1

#new world mode stuff
execute if score data newWorldMode matches 1 run gamerule doDaylightCycle true
execute if score data newWorldMode matches 1 run time set 0
execute if score data newWorldMode matches 1 run clear @a[tag=player]
gamerule keepInventory true

#tp players
tp @a[tag=player,nbt={Dimension:"minecraft:the_nether"}] @e[tag=center,limit=1]
execute if score data teamnum matches 2 at @e[tag=center,limit=1] run spreadplayers ~300 ~ 200 100 true @a[tag=player,team=blue]
execute if score data teamnum matches 2 at @e[tag=center,limit=1] run spreadplayers ~-300 ~ 200 100 true @a[tag=player,team=red]
execute if score data teamnum matches 4 at @e[tag=center,limit=1] run spreadplayers ~400 ~400 200 100 true @a[tag=player,team=blue]
execute if score data teamnum matches 4 at @e[tag=center,limit=1] run spreadplayers ~-400 ~-400 200 100 true @a[tag=player,team=red]
execute if score data teamnum matches 4 at @e[tag=center,limit=1] run spreadplayers ~-400 ~400 200 100 true @a[tag=player,team=green]
execute if score data teamnum matches 4 at @e[tag=center,limit=1] run spreadplayers ~400 ~-400 200 100 true @a[tag=player,team=yellow]

#set new spawn points
execute as @e[tag=center,limit=1] at @s run setworldspawn ~ ~ ~
execute as @a[tag=player] at @s run spawnpoint @s ~ ~ ~

#give random team member captain
execute unless entity @a[team=red,tag=captain] run tag @r[team=red] add captain
execute unless entity @a[team=blue,tag=captain] run tag @r[team=blue] add captain
execute unless entity @a[team=green,tag=captain] run tag @r[team=green] add captain
execute unless entity @a[team=yellow,tag=captain] run tag @r[team=yellow] add captain

#tell captain how to place and retrieve the flag with trigger commands
tellraw @s ["",{"text":"Use ","color":"yellow"},{"text":"/trigger placeflag","italic":true,"color":"yellow"},{"text":" and ","color":"yellow"},{"text":"/trigger undoflag","italic":true,"color":"yellow"},{"text":" to place and remove your flag. ","color":"yellow"},{"text":"If you do not place the flag by the end of defense time it will be placed at your position.","color":"red"}]

#give everyone some health and hunger regen
effect give @a[tag=player] regeneration 10 5 true
effect give @a[tag=player] saturation 10 5 true

#distribute kits
function cf:kits/givekits

##flag compass tracker setup
execute in minecraft:overworld run forceload add 0 0
execute in minecraft:the_nether run forceload add 0 0
#blue
execute in minecraft:overworld run setblock 0 -64 0 shulker_box
execute in minecraft:overworld run setblock 0 -63 0 bedrock
execute in minecraft:the_nether run setblock 0 0 0 shulker_box
execute in minecraft:the_nether run setblock 0 1 0 bedrock
#red
execute in minecraft:overworld run setblock 1 -64 0 shulker_box
execute in minecraft:overworld run setblock 1 -63 0 bedrock
execute in minecraft:the_nether run setblock 1 0 0 shulker_box
execute in minecraft:the_nether run setblock 1 1 0 bedrock
#green
execute in minecraft:overworld run setblock 2 -64 0 shulker_box
execute in minecraft:overworld run setblock 2 -63 0 bedrock
execute in minecraft:the_nether run setblock 2 0 0 shulker_box
execute in minecraft:the_nether run setblock 2 1 0 bedrock
#yellow
execute in minecraft:overworld run setblock 3 -64 0 shulker_box
execute in minecraft:overworld run setblock 3 -63 0 bedrock
execute in minecraft:the_nether run setblock 3 0 0 shulker_box
execute in minecraft:the_nether run setblock 3 1 0 bedrock

execute as @a run trigger kit1
execute as @a run trigger kit2
execute as @a run trigger kit3
execute as @a run trigger kit4
execute as @a run trigger kit5
execute as @a run trigger joinblue
execute as @a run trigger joinred
execute as @a run trigger joingreen
execute as @a run trigger joinyellow
scoreboard players reset @a kit1
scoreboard players reset @a kit2
scoreboard players reset @a kit3
scoreboard players reset @a kit4
scoreboard players reset @a kit5
scoreboard players reset @a joinblue
scoreboard players reset @a joinred
scoreboard players reset @a joingreen
scoreboard players reset @a joinyellow