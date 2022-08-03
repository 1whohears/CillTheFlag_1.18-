#initial options

function cf:phase/init0

#new world mode
tellraw @s ["",{"text":"New World Mode assumes you are using a brand new disbosable minecraft world. It is Disabled by default. If enabled everyone is put into adventure mode, spawns in a small world boarder to prevent changing the world before the game starts, and everyone's inventory is cleared. These changes do not take effect until you move onto the next step. ","color":"yellow"},{"text":"Enable New World Mode ","bold":true,"underlined":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set data newWorldMode 1"}},{"text":"Disable New World Mode","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set data newWorldMode 0"}}]

#how many teams
tellraw @s ["",{"text":"2 Teams By Default. ","color":"yellow"},{"text":"2 Teams ","bold":true,"underlined":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set data teamnum 2"}},{"text":"4 Teams ","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set data teamnum 4"}}]

#enable disable kits
tellraw @s ["",{"text":"No Kits By Default. Do not enable unless you have an extra kit datapack installed! ","color":"yellow"},{"text":"Enable Kits ","bold":true,"underlined":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set data enablekits 1"}},{"text":"Disable Kits","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set data enablekits 0"}}]

#defense time
tellraw @s {"text":"Set Defense Time to 1 Minute","bold":true,"underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/scoreboard players set data defenseTime 60"}}
tellraw @s {"text":"Set Defense Time to 5 Minutes","bold":true,"underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/scoreboard players set data defenseTime 300"}}
tellraw @s {"text":"Set Defense Time to 10 Minutes","bold":true,"underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/scoreboard players set data defenseTime 600"}}
tellraw @s {"text":"Set Defense Time to 15 Minutes","bold":true,"underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/scoreboard players set data defenseTime 900"}}
tellraw @s {"text":"Set Defense Time to 20 Minutes","bold":true,"underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/scoreboard players set data defenseTime 1200"}}
tellraw @s {"text":"Set Defense Time to 30 Minutes","bold":true,"underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/scoreboard players set data defenseTime 1800"}}

#attack time
tellraw @s {"text":"Set Attack Time to 10 Minutes","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set data attackTime 600"}}
tellraw @s {"text":"Set Attack Time to 15 Minutes","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set data attackTime 900"}}
tellraw @s {"text":"Set Attack Time to 20 Minutes","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set data attackTime 1200"}}
tellraw @s {"text":"Set Attack Time to 30 Minutes","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set data attackTime 1800"}}
tellraw @s {"text":"Set Attack Time to 45 Minutes","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set data attackTime 2700"}}
tellraw @s {"text":"Set Attack Time to 60 Minutes","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set data attackTime 3600"}}

#display normal player options
tellraw @s ["",{"text":"Position yourself in the center of where you want the game to take place. ","color":"yellow"},{"text":"Next Step and Reveal Player Options","bold":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function cf:setup/playeroptions"}}]