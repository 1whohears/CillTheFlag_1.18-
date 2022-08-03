#check red blue green yellow triggers

function cf:teams/trigger1

scoreboard players enable @a joingreen
scoreboard players enable @a joinyellow

execute as @a[scores={joingreen=1..}] run function cf:teams/joingreen
execute as @a[scores={joinyellow=1..}] run function cf:teams/joinyellow