#select blue or red team

tellraw @a {"text":"Join Team Blue","bold":true,"underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger joinblue"}}
tellraw @a {"text":"Join Team Red","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger joinred"}}