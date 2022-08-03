#store the entities coords into its nether scoreboard

execute store result score @s xn run data get entity @s Pos[0]
execute store result score @s yn run data get entity @s Pos[1]
execute store result score @s zn run data get entity @s Pos[2]