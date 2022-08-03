#uninstall

function cf:setup/reset

execute in minecraft:overworld run forceload remove 0 0

scoreboard objectives remove phase
scoreboard objectives remove newWorldMode
scoreboard objectives remove defenseTime
scoreboard objectives remove attackTime
scoreboard objectives remove teamnum
scoreboard objectives remove enablekits
scoreboard objectives remove display

scoreboard objectives remove totalDeaths
scoreboard objectives remove initDeaths
scoreboard objectives remove currentDeaths
scoreboard objectives remove spectateTimer
scoreboard objectives remove trackslot

scoreboard objectives remove leave
scoreboard objectives remove pearl
scoreboard objectives remove villagerKills

scoreboard objectives remove ticks
scoreboard objectives remove seconds
scoreboard objectives remove xgoal
scoreboard objectives remove ygoal
scoreboard objectives remove zgoal

scoreboard objectives remove kit
scoreboard objectives remove kit1
scoreboard objectives remove kit2
scoreboard objectives remove kit3
scoreboard objectives remove kit4
scoreboard objectives remove kit5

scoreboard objectives remove joinblue
scoreboard objectives remove joinred
scoreboard objectives remove joingreeen
scoreboard objectives remove joinyellow

scoreboard objectives remove placeflag
scoreboard objectives remove undoflag
scoreboard objectives remove trackblue
scoreboard objectives remove trackred
scoreboard objectives remove trackgreen
scoreboard objectives remove trackyellow
scoreboard objectives remove playertp

scoreboard objectives remove displayBlue
scoreboard objectives remove displayRed
scoreboard objectives remove displayGreen
scoreboard objectives remove displayYellow

scoreboard objectives remove flagState
scoreboard objectives remove x
scoreboard objectives remove y
scoreboard objectives remove z
scoreboard objectives remove xn
scoreboard objectives remove yn
scoreboard objectives remove zn

team remove blue
team remove red
team remove green
team remove yellow
team remove _blue
team remove _red
team remove _green
team remove _yellow
team remove _red2
team remove _purple
team remove _orange