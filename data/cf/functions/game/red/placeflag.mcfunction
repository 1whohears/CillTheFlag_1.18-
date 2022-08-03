#place flag red

scoreboard players set red flagState 1

kill @e[tag=mr]
kill @e[tag=vr]

summon armor_stand ~ ~2 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["mr"],CustomName:'{"text":"Red Flag","color":"red","bold":true,"underlined":true}'}

execute as @e[tag=mr,limit=1] run function cf:game/storexyz

execute as @e[tag=mr,limit=1] run function cf:game/red/setflagpos

tellraw @a ["",{"selector":"@s","underlined":true},{"text":" placed the red flag!","color":"red"}]