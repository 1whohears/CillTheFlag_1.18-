#choose red blue green or yellow team

function cf:teams/selectteams1

tellraw @a {"text":"Join Green Team","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger joingreen"}}
tellraw @a {"text":"Join Yellow Team","bold":true,"underlined":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger joinyellow"}}