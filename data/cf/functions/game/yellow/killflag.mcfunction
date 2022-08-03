#steal flag yellow

scoreboard players set yellow flagState 2

kill @e[tag=my]
kill @e[tag=vy]

tellraw @a ["",{"selector":"@s","underlined":true},{"text":" destroyed the yellow flag!","color":"yellow"}]