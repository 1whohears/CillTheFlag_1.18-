#phase 3 sudden death

#anyone respawning is put into survival instantly
execute as @a[tag=player,scores={spectateTimer=0..}] run gamemode survival @s

#bans
function cf:game/bans

#tp players that die to death point and put them in spectator
execute as @a[tag=player,nbt={DeathTime:1s}] at @s run function cf:game/die

#spectators
function cf:game/spectators

#make random player captain if they die
execute unless entity @a[tag=captain,team=red] run tag @r[tag=player,team=red] add captain
execute unless entity @a[tag=captain,team=blue] run tag @r[tag=player,team=blue] add captain
execute unless entity @a[tag=captain,team=green] run tag @r[tag=player,team=greeen] add captain
execute unless entity @a[tag=captain,team=yellow] run tag @r[tag=player,team=yellow] add captain

#track team captain
execute if score data ticks matches 0 as @a[tag=captain,team=red,nbt={Dimension:"minecraft:overworld"},limit=1] in minecraft:overworld run function cf:game/red/setflagpos
execute if score data ticks matches 0 as @a[tag=captain,team=red,nbt={Dimension:"minecraft:the_nether"},limit=1] in minecraft:the_nether run function cf:game/red/setflagposn
execute if score data ticks matches 0 as @a[tag=captain,team=blue,nbt={Dimension:"minecraft:overworld"},limit=1] in minecraft:overworld run function cf:game/blue/setflagpos
execute if score data ticks matches 0 as @a[tag=captain,team=blue,nbt={Dimension:"minecraft:the_nether"},limit=1] in minecraft:the_nether run function cf:game/blue/setflagposn
execute if score data ticks matches 0 as @a[tag=captain,team=green,nbt={Dimension:"minecraft:overworld"},limit=1] in minecraft:overworld run function cf:game/green/setflagpos
execute if score data ticks matches 0 as @a[tag=captain,team=green,nbt={Dimension:"minecraft:the_nether"},limit=1] in minecraft:the_nether run function cf:game/green/setflagposn
execute if score data ticks matches 0 as @a[tag=captain,team=yellow,nbt={Dimension:"minecraft:overworld"},limit=1] in minecraft:overworld run function cf:game/yellow/setflagpos
execute if score data ticks matches 0 as @a[tag=captain,team=yellow,nbt={Dimension:"minecraft:the_nether"},limit=1] in minecraft:the_nether run function cf:game/yellow/setflagposn

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

#update worldboarder
execute if score data seconds matches 310 if score data ticks matches 0 run worldborder set 600 300
execute if score data seconds matches 620 if score data ticks matches 0 run worldborder set 300 300
execute if score data seconds matches 930 if score data ticks matches 0 run worldborder set 100 300

#check for winner
execute if score notempty teamSize matches 1 if score red teamSize matches 1.. run function cf:game/red/win
execute if score notempty teamSize matches 1 if score blue teamSize matches 1.. run function cf:game/blue/win
execute if score notempty teamSize matches 1 if score green teamSize matches 1.. run function cf:game/green/win
execute if score notempty teamSize matches 1 if score yellow teamSize matches 1.. run function cf:game/yellow/win