#place flag green

scoreboard players set green flagState 1

kill @e[tag=mg]
kill @e[tag=vg]

summon armor_stand ~ ~2 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["mg"],CustomName:'{"text":"Green Flag","color":"green","bold":true,"underlined":true}'}

execute as @e[tag=mg,limit=1] run function cf:game/storexyz

execute as @e[tag=mg,limit=1] run function cf:game/green/setflagpos

tellraw @a ["",{"selector":"@s","underlined":true},{"text":" placed the green flag!","color":"green"}]