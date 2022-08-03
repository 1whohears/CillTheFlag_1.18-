#display info on scoreboard

scoreboard players reset Members
scoreboard players reset Enemies
scoreboard players reset Flag_Not_Set
scoreboard players reset Flag_Safe
scoreboard players reset Flag_Destroyed
scoreboard players reset Defense_Time
scoreboard players reset Battle_Time
scoreboard players reset Deathmatch
scoreboard players reset Victory
scoreboard players reset You_Suck
scoreboard players reset Red
scoreboard players reset Blue
scoreboard players reset Green
scoreboard players reset Yellow

scoreboard players operation Members displayRed = red teamSize
scoreboard players operation Members displayBlue = blue teamSize
scoreboard players operation Members displayGreen = green teamSize
scoreboard players operation Members displayYellow = yellow teamSize

scoreboard players operation Red display = red teamSize
scoreboard players operation Blue display = blue teamSize
scoreboard players operation Green display = green teamSize
scoreboard players operation Yellow display = yellow teamSize

execute if score data phase matches 1..2 if score red flagState matches 0 run scoreboard players set Flag_Not_Set displayRed 0
execute if score data phase matches 1..2 if score red flagState matches 1 run scoreboard players set Flag_Safe displayRed 0
execute if score data phase matches 1..2 if score red flagState matches 2 run scoreboard players set Flag_Destroyed displayRed 0

execute if score data phase matches 1..2 if score blue flagState matches 0 run scoreboard players set Flag_Not_Set displayBlue 0
execute if score data phase matches 1..2 if score blue flagState matches 1 run scoreboard players set Flag_Safe displayBlue 0
execute if score data phase matches 1..2 if score blue flagState matches 2 run scoreboard players set Flag_Destroyed displayBlue 0

execute if score data phase matches 1..2 if score green flagState matches 0 run scoreboard players set Flag_Not_Set displayGreen 0
execute if score data phase matches 1..2 if score green flagState matches 1 run scoreboard players set Flag_Safe displayGreen 0
execute if score data phase matches 1..2 if score green flagState matches 2 run scoreboard players set Flag_Destroyed displayGreen 0

execute if score data phase matches 1..2 if score yellow flagState matches 0 run scoreboard players set Flag_Not_Set displayYellow 0
execute if score data phase matches 1..2 if score yellow flagState matches 1 run scoreboard players set Flag_Safe displayYellow 0
execute if score data phase matches 1..2 if score yellow flagState matches 2 run scoreboard players set Flag_Destroyed displayYellow 0

execute if score data phase matches 1 run scoreboard players operation Defense_Time display = data defenseTime
execute if score data phase matches 1 run scoreboard players operation Defense_Time display -= data seconds
execute if score data phase matches 2 run scoreboard players operation Battle_Time display = data attackTime
execute if score data phase matches 2 run scoreboard players operation Battle_Time display -= data seconds
execute if score data phase matches 3 run scoreboard players operation Deathmatch display = data seconds

execute if score data phase matches 1 run scoreboard players operation Defense_Time displayRed = Defense_Time display
execute if score data phase matches 2 run scoreboard players operation Battle_Time displayRed = Battle_Time display
execute if score data phase matches 3 run scoreboard players operation Deathmatch displayRed = data seconds

execute if score data phase matches 1 run scoreboard players operation Defense_Time displayBlue = Defense_Time display
execute if score data phase matches 2 run scoreboard players operation Battle_Time displayBlue = Battle_Time display
execute if score data phase matches 3 run scoreboard players operation Deathmatch displayBlue = data seconds

execute if score data phase matches 1 run scoreboard players operation Defense_Time displayGreen = Defense_Time display
execute if score data phase matches 2 run scoreboard players operation Battle_Time displayGreen = Battle_Time display
execute if score data phase matches 3 run scoreboard players operation Deathmatch displayGreen = data seconds

execute if score data phase matches 1 run scoreboard players operation Defense_Time displayYellow = Defense_Time display
execute if score data phase matches 2 run scoreboard players operation Battle_Time displayYellow = Battle_Time display
execute if score data phase matches 3 run scoreboard players operation Deathmatch displayYellow = data seconds