#display player options

#teams
execute if score data teamnum matches 2 run function cf:teams/selectteams1
execute if score data teamnum matches 4 run function cf:teams/selectteams2

#kits
execute if score data enablekits matches 1 run function cf:kits/selectkits