#check red and blue triggers

scoreboard players enable @a joinblue
scoreboard players enable @a joinred

execute as @a[scores={joinblue=1..}] run function cf:teams/joinblue
execute as @a[scores={joinred=1..}] run function cf:teams/joinred