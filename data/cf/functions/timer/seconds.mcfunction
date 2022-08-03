#count up for seconds

scoreboard players add data ticks 1
execute if score data ticks matches 20.. run scoreboard players set data ticks 0
execute if score data ticks matches 0 run scoreboard players add data seconds 1