#get team size

scoreboard players reset red teamSize
execute as @a[team=red] run scoreboard players add red teamSize 1
scoreboard players reset blue teamSize
execute as @a[team=blue] run scoreboard players add blue teamSize 1
scoreboard players reset green teamSize
execute as @a[team=green] run scoreboard players add green teamSize 1
scoreboard players reset yellow teamSize
execute as @a[team=yellow] run scoreboard players add yellow teamSize 1

scoreboard players reset notempty teamSize
execute if score red teamSize matches 1.. run scoreboard players add notempty teamSize 1
execute if score blue teamSize matches 1.. run scoreboard players add notempty teamSize 1
execute if score green teamSize matches 1.. run scoreboard players add notempty teamSize 1
execute if score yellow teamSize matches 1.. run scoreboard players add notempty teamSize 1