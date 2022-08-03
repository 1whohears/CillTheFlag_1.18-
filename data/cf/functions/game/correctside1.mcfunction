#stay on the right side of the map for red and blue

execute as @a[team=blue] if score @s x < center x at @s run tp ~1 ~ ~
execute as @a[team=red] if score @s x > center x at @s run tp ~-1 ~ ~