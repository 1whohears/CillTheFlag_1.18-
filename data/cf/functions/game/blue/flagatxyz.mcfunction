#place flag at the players last saved position

scoreboard players operation @s xgoal = @s x
scoreboard players operation @s ygoal = @s y
scoreboard players operation @s zgoal = @s z

execute in minecraft:overworld run function cf:game/tpbyscore

execute at @s run function cf:game/blue/placeflag