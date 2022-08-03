#stay on the right side of the map for red blue green and yellow

execute as @a[team=blue] if score @s x < center x at @s run tp ~1 ~ ~
execute as @a[team=blue] if score @s z < center z at @s run tp ~ ~ ~1

execute as @a[team=red] if score @s x > center x at @s run tp ~-1 ~ ~
execute as @a[team=red] if score @s z > center z at @s run tp ~ ~ ~-1

execute as @a[team=green] if score @s x > center x at @s run tp ~-1 ~ ~
execute as @a[team=green] if score @s z < center z at @s run tp ~ ~ ~1

execute as @a[team=yellow] if score @s x < center x at @s run tp ~1 ~ ~
execute as @a[team=yellow] if score @s z > center z at @s run tp ~ ~ ~-1