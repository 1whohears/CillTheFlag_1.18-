#phase 2 attack

#tp players that die to death point and put them in spectator
execute if score red flagState matches 2 as @a[tag=player,team=red,nbt={DeathTime:1s}] at @s run function cf:game/die
execute if score blue flagState matches 2 as @a[tag=player,team=blue,nbt={DeathTime:1s}] at @s run function cf:game/die
execute if score green flagState matches 2 as @a[tag=player,team=green,nbt={DeathTime:1s}] at @s run function cf:game/die
execute if score yellow flagState matches 2 as @a[tag=player,team=yellow,nbt={DeathTime:1s}] at @s run function cf:game/die

#respawns
function cf:game/respawn

#bans
function cf:game/bans

#check if flags were stolen
execute if score red flagState matches 1 at @e[tag=mr] positioned ~ ~-2 ~ unless entity @e[tag=vr,distance=..3] as @p[scores={villagerKills=1..},team=!red,distance=..4] run function cf:game/red/killflag
execute if score blue flagState matches 1 at @e[tag=mb] positioned ~ ~-2 ~ unless entity @e[tag=vb,distance=..3] as @p[scores={villagerKills=1..},team=!blue,distance=..4] run function cf:game/blue/killflag
execute if score green flagState matches 1 at @e[tag=mg] positioned ~ ~-2 ~ unless entity @e[tag=vg,distance=..3] as @p[scores={villagerKills=1..},team=!green,distance=..4] run function cf:game/green/killflag
execute if score yellow flagState matches 1 at @e[tag=my] positioned ~ ~-2 ~ unless entity @e[tag=vy,distance=..3] as @p[scores={villagerKills=1..},team=!yellow,distance=..4] run function cf:game/yellow/killflag
scoreboard players reset @a villagerKills

#track captian if flag destoyed
execute if score data ticks matches 0 if score red flagState matches 2 as @a[tag=captain,team=red,nbt={Dimension:"minecraft:overworld"},limit=1] in minecraft:overworld run function cf:game/red/setflagpos
execute if score data ticks matches 0 if score red flagState matches 2 as @a[tag=captain,team=red,nbt={Dimension:"minecraft:the_nether"},limit=1] in minecraft:the_nether run function cf:game/red/setflagposn
execute if score data ticks matches 0 if score blue flagState matches 2 as @a[tag=captain,team=blue,nbt={Dimension:"minecraft:overworld"},limit=1] in minecraft:overworld run function cf:game/blue/setflagpos
execute if score data ticks matches 0 if score blue flagState matches 2 as @a[tag=captain,team=blue,nbt={Dimension:"minecraft:the_nether"},limit=1] in minecraft:the_nether run function cf:game/blue/setflagposn
execute if score data ticks matches 0 if score green flagState matches 2 as @a[tag=captain,team=green,nbt={Dimension:"minecraft:overworld"},limit=1] in minecraft:overworld run function cf:game/green/setflagpos
execute if score data ticks matches 0 if score green flagState matches 2 as @a[tag=captain,team=green,nbt={Dimension:"minecraft:the_nether"},limit=1] in minecraft:the_nether run function cf:game/green/setflagposn
execute if score data ticks matches 0 if score yellow flagState matches 2 as @a[tag=captain,team=yellow,nbt={Dimension:"minecraft:overworld"},limit=1] in minecraft:overworld run function cf:game/yellow/setflagpos
execute if score data ticks matches 0 if score yellow flagState matches 2 as @a[tag=captain,team=yellow,nbt={Dimension:"minecraft:the_nether"},limit=1] in minecraft:the_nether run function cf:game/yellow/setflagposn

#keep villager in correct spot or respawn it if it dies
function cf:game/correctflags

#spectators
function cf:game/spectators

#track switching
scoreboard players enable @a[tag=player] trackred
scoreboard players enable @a[tag=player] trackblue
scoreboard players enable @a[tag=player] trackgreen
scoreboard players enable @a[tag=player] trackyellow
execute as @a[tag=player] if score @s trackred matches 1.. run function cf:game/red/gettracker
execute as @a[tag=player] if score @s trackblue matches 1.. run function cf:game/blue/gettracker
execute as @a[tag=player] if score @s trackgreen matches 1.. run function cf:game/green/gettracker
execute as @a[tag=player] if score @s trackyellow matches 1.. run function cf:game/yellow/gettracker

#update trackers 
execute if score data ticks matches 0 as @a[nbt={SelectedItem:{tag:{track_flag_red:1b}},Dimension:"minecraft:overworld"}] in minecraft:overworld run function cf:game/red/updatetracker
execute if score data ticks matches 0 as @a[nbt={SelectedItem:{tag:{track_flag_red:1b}},Dimension:"minecraft:the_nether"}] in minecraft:the_nether run function cf:game/red/updatetrackern
execute if score data ticks matches 0 as @a[nbt={SelectedItem:{tag:{track_flag_blue:1b}},Dimension:"minecraft:overworld"}] in minecraft:overworld run function cf:game/blue/updatetracker
execute if score data ticks matches 0 as @a[nbt={SelectedItem:{tag:{track_flag_blue:1b}},Dimension:"minecraft:the_nether"}] in minecraft:the_nether run function cf:game/blue/updatetrackern
execute if score data ticks matches 0 as @a[nbt={SelectedItem:{tag:{track_flag_green:1b}},Dimension:"minecraft:overworld"}] in minecraft:overworld run function cf:game/green/updatetracker
execute if score data ticks matches 0 as @a[nbt={SelectedItem:{tag:{track_flag_green:1b}},Dimension:"minecraft:the_nether"}] in minecraft:the_nether run function cf:game/green/updatetrackern
execute if score data ticks matches 0 as @a[nbt={SelectedItem:{tag:{track_flag_yellow:1b}},Dimension:"minecraft:overworld"}] in minecraft:overworld run function cf:game/yellow/updatetracker
execute if score data ticks matches 0 as @a[nbt={SelectedItem:{tag:{track_flag_yellow:1b}},Dimension:"minecraft:the_nether"}] in minecraft:the_nether run function cf:game/yellow/updatetrackern

#check for winner
execute if score notempty teamSize matches 1 if score red teamSize matches 1.. run function cf:game/red/win
execute if score notempty teamSize matches 1 if score blue teamSize matches 1.. run function cf:game/blue/win
execute if score notempty teamSize matches 1 if score green teamSize matches 1.. run function cf:game/green/win
execute if score notempty teamSize matches 1 if score yellow teamSize matches 1.. run function cf:game/yellow/win

#start sudden death
execute if score data seconds = data attackTime run function cf:phase/init3