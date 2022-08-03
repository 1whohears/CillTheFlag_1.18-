#steal flag green

scoreboard players set green flagState 2

kill @e[tag=mg]
kill @e[tag=vg]

tellraw @a ["",{"selector":"@s","underlined":true},{"text":" destroyed the green flag!","color":"green"}]