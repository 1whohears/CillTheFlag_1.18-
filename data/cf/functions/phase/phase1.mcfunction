#phase 1 defense

#trigger flag place
scoreboard players enable @a[tag=captain] placeflag
execute if score red flagState matches 0 as @a[tag=captain,team=red,nbt={Dimension:"minecraft:overworld"}] if score @s placeflag matches 1.. at @s run function cf:game/red/placeflag
execute if score blue flagState matches 0 as @a[tag=captain,team=blue,nbt={Dimension:"minecraft:overworld"}] if score @s placeflag matches 1.. at @s run function cf:game/blue/placeflag
execute if score green flagState matches 0 as @a[tag=captain,team=green,nbt={Dimension:"minecraft:overworld"}] if score @s placeflag matches 1.. at @s run function cf:game/green/placeflag
execute if score yellow flagState matches 0 as @a[tag=captain,team=yellow,nbt={Dimension:"minecraft:overworld"}] if score @s placeflag matches 1.. at @s run function cf:game/yellow/placeflag

#trigger flag pickup
scoreboard players enable @a[tag=captain] undoflag
execute if score red flagState matches 1 as @a[tag=captain,team=red] if score @s undoflag matches 1.. at @s if entity @e[tag=mr,distance=..5] run function cf:game/red/undoflag
execute if score blue flagState matches 1 as @a[tag=captain,team=blue] if score @s undoflag matches 1.. at @s if entity @e[tag=mb,distance=..5] run function cf:game/blue/undoflag
execute if score green flagState matches 1 as @a[tag=captain,team=green] if score @s undoflag matches 1.. at @s if entity @e[tag=mg,distance=..5] run function cf:game/green/undoflag
execute if score yellow flagState matches 1 as @a[tag=captain,team=yellow] if score @s undoflag matches 1.. at @s if entity @e[tag=my,distance=..5] run function cf:game/yellow/undoflag

#keep people on their side of the map
execute if score data teamnum matches 2 at @e[tag=center,limit=1] run function cf:game/correctside1
execute if score data teamnum matches 4 at @e[tag=center,limit=1] run function cf:game/correctside2

#keep villager in correct spot or respawn it if it dies
function cf:game/correctflags

#respawns
function cf:game/respawn

#bans
function cf:game/bans

#spectators
function cf:game/spectators

#switch to attack time
execute if score data seconds = data defenseTime run function cf:phase/init2