#set the middle of the game

setworldspawn ~ ~ ~

kill @e[tag=center]

summon armor_stand ~ ~ ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["center"],CustomName:'{"text":"Center of Game","color":"blue","bold":true,"underlined":true}'}

execute store result score center x run data get entity @e[tag=center,limit=1] Pos[0]
execute store result score center y run data get entity @e[tag=center,limit=1] Pos[1]
execute store result score center z run data get entity @e[tag=center,limit=1] Pos[2]