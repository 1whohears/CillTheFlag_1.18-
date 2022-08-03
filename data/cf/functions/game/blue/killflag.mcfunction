#steal flag blue

scoreboard players set blue flagState 2

kill @e[tag=mb]
kill @e[tag=vb]

tellraw @a ["",{"selector":"@s","underlined":true},{"text":" destroyed the blue flag!","color":"blue"}]