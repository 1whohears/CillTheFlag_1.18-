#load

scoreboard objectives add phase dummy "Game Phase:0=Setup/1=Defense/2=Attack/3=SuddenDeath/4=GameOver"
scoreboard objectives add newWorldMode dummy "Assume there were no items or builds setup before the game starts"
scoreboard objectives add defenseTime dummy "Seconds Left to Build Your Defenses"
scoreboard objectives add attackTime dummy "Seconds Before Sudden Death"
scoreboard objectives add teamnum dummy "Number of Teams (2 or 4)"
scoreboard objectives add enablekits dummy "Are there kits?"
scoreboard objectives add display dummy "Spectator"

scoreboard objectives add totalDeaths deathCount "Total Deaths"
scoreboard objectives setdisplay list totalDeaths
scoreboard objectives add initDeaths dummy "Total Deaths When the Game Started"
scoreboard objectives add currentDeaths dummy "Total-Init"
scoreboard objectives add spectateTimer dummy "Time as spectator before respawn"
scoreboard objectives add trackslot dummy "The slot your tracker compass is in"

scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard objectives add pearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add villagerKills minecraft.killed:minecraft.villager

scoreboard objectives add ticks dummy
scoreboard objectives add seconds dummy
scoreboard objectives add xgoal dummy
scoreboard objectives add ygoal dummy
scoreboard objectives add zgoal dummy

scoreboard objectives add kit dummy "Selected Kit"
scoreboard objectives add kit1 trigger
scoreboard objectives add kit2 trigger
scoreboard objectives add kit3 trigger
scoreboard objectives add kit4 trigger
scoreboard objectives add kit5 trigger

scoreboard objectives add joinblue trigger "Join Blue Team"
scoreboard objectives add joinred trigger "Join Red Team"
scoreboard objectives add joingreen trigger "Join Green Team"
scoreboard objectives add joinyellow trigger "Join Yellow Team"

scoreboard objectives add placeflag trigger
scoreboard objectives add undoflag trigger
scoreboard objectives add trackblue trigger
scoreboard objectives add trackred trigger
scoreboard objectives add trackgreen trigger
scoreboard objectives add trackyellow trigger
scoreboard objectives add playertp trigger

team add blue "Blue Team"
team modify blue color blue
team modify blue friendlyFire false
team modify blue seeFriendlyInvisibles true  
scoreboard objectives add displayBlue dummy "BLUE TEAM"
scoreboard objectives setdisplay sidebar.team.blue displayBlue

team add red "Red Team"
team modify red color red
team modify red friendlyFire false
team modify red seeFriendlyInvisibles true
scoreboard objectives add displayRed dummy "RED TEAM"
scoreboard objectives setdisplay sidebar.team.red displayRed

team add green "Green Team"
team modify green color green
team modify green friendlyFire false
team modify green seeFriendlyInvisibles true
scoreboard objectives add displayGreen dummy "GREEN TEAM"
scoreboard objectives setdisplay sidebar.team.green displayGreen

team add yellow "Yellow Team"
team modify yellow color yellow
team modify yellow friendlyFire false
team modify yellow seeFriendlyInvisibles true
scoreboard objectives add displayYellow dummy "YELLOW TEAM"
scoreboard objectives setdisplay sidebar.team.yellow displayYellow

scoreboard objectives add flagState dummy "Flag State:0=Not Set/1=Safe/2=Destroyed"
scoreboard objectives add teamSize dummy "Players on Team"
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add xn dummy
scoreboard objectives add yn dummy
scoreboard objectives add zn dummy

team add _blue
team modify _blue color blue
team add _red
team modify _red color red
team add _green
team modify _green color green
team add _yellow
team modify _yellow color yellow
team add _orange
team modify _orange color gold
team add _purple
team modify _purple color dark_purple
team add _red2
team modify _red2 color dark_red

team join _green Flag_Safe
team join _yellow Flag_Not_Set
team join _red Flag_Destroyed
team join _orange Members
team join _red2 Enemies
team join _blue Defense_Time
team join _purple Battle_Time
team join _yellow Deathmatch
team join _blue Victory
team join _red You_Suck
team join _red Red
team join _blue Blue
team join _green Green
team join _yellow Yellow