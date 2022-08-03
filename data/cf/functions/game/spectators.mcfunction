gamemode spectator @a[tag=!player]

#trigger tp to random player
scoreboard players enable @a[tag=!player] playertp
execute as @a[tag=!player] if score @s playertp matches 1.. run tp @s @r[tag=player]
execute as @a[tag=!player] if score @s playertp matches 1.. run scoreboard players reset @s playertp