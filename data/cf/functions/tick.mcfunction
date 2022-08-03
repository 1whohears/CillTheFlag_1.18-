#tick

function cf:timer/seconds

function cf:teams/teamsize

function cf:game/display

function cf:game/playerdata

execute if score data phase matches 0 run function cf:phase/phase0
execute if score data phase matches 1 run function cf:phase/phase1
execute if score data phase matches 2 run function cf:phase/phase2
execute if score data phase matches 3 run function cf:phase/phase3
execute if score data phase matches 4 run function cf:phase/phase4