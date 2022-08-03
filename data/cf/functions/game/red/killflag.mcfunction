#steal flag red

scoreboard players set red flagState 2

kill @e[tag=mr]
kill @e[tag=vr]

tellraw @a ["",{"selector":"@s","underlined":true},{"text":" destroyed the red flag!","color":"red"}]