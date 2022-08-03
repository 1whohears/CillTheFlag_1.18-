#update tracker

execute store result score math x run data get block 0 -64 0 Items[0].tag.LodestonePos.X
scoreboard players operation math x -= @s x
execute store result score math y run data get block 0 -64 0 Items[0].tag.LodestonePos.Y
scoreboard players operation math y -= @s y
execute store result score math z run data get block 0 -64 0 Items[0].tag.LodestonePos.Z
scoreboard players operation math z -= @s z

title @s actionbar ["",{"text":"∆x=","color":"blue"},{"score":{"name":"math","objective":"x"},"color":"blue"},{"text":",∆y=","color":"blue"},{"score":{"name":"math","objective":"y"},"color":"blue"},{"text":",∆z=","color":"blue"},{"score":{"name":"math","objective":"z"},"color":"blue"}]

execute store result score @s trackslot run data get entity @s Inventory[{tag:{track_flag_blue:1b}}].Slot

execute if score @s trackslot matches 0 run item replace entity @s hotbar.0 with air
execute if score @s trackslot matches 1 run item replace entity @s hotbar.1 with air
execute if score @s trackslot matches 2 run item replace entity @s hotbar.2 with air
execute if score @s trackslot matches 3 run item replace entity @s hotbar.3 with air
execute if score @s trackslot matches 4 run item replace entity @s hotbar.4 with air
execute if score @s trackslot matches 5 run item replace entity @s hotbar.5 with air
execute if score @s trackslot matches 6 run item replace entity @s hotbar.6 with air
execute if score @s trackslot matches 7 run item replace entity @s hotbar.7 with air
execute if score @s trackslot matches 8 run item replace entity @s hotbar.8 with air
execute if score @s trackslot matches 9 run item replace entity @s inventory.0 with air
execute if score @s trackslot matches 10 run item replace entity @s inventory.1 with air
execute if score @s trackslot matches 11 run item replace entity @s inventory.2 with air
execute if score @s trackslot matches 12 run item replace entity @s inventory.3 with air
execute if score @s trackslot matches 13 run item replace entity @s inventory.4 with air
execute if score @s trackslot matches 14 run item replace entity @s inventory.5 with air
execute if score @s trackslot matches 15 run item replace entity @s inventory.6 with air
execute if score @s trackslot matches 16 run item replace entity @s inventory.7 with air
execute if score @s trackslot matches 17 run item replace entity @s inventory.8 with air
execute if score @s trackslot matches 18 run item replace entity @s inventory.9 with air
execute if score @s trackslot matches 19 run item replace entity @s inventory.10 with air
execute if score @s trackslot matches 20 run item replace entity @s inventory.11 with air
execute if score @s trackslot matches 21 run item replace entity @s inventory.12 with air
execute if score @s trackslot matches 22 run item replace entity @s inventory.13 with air
execute if score @s trackslot matches 23 run item replace entity @s inventory.14 with air
execute if score @s trackslot matches 24 run item replace entity @s inventory.15 with air
execute if score @s trackslot matches 25 run item replace entity @s inventory.16 with air
execute if score @s trackslot matches 26 run item replace entity @s inventory.17 with air
execute if score @s trackslot matches 27 run item replace entity @s inventory.18 with air
execute if score @s trackslot matches 28 run item replace entity @s inventory.19 with air
execute if score @s trackslot matches 29 run item replace entity @s inventory.20 with air
execute if score @s trackslot matches 30 run item replace entity @s inventory.21 with air
execute if score @s trackslot matches 31 run item replace entity @s inventory.22 with air
execute if score @s trackslot matches 32 run item replace entity @s inventory.23 with air
execute if score @s trackslot matches 33 run item replace entity @s inventory.24 with air
execute if score @s trackslot matches 34 run item replace entity @s inventory.25 with air
execute if score @s trackslot matches 35 run item replace entity @s inventory.26 with air
execute if score @s trackslot matches -106 run item replace entity @s weapon.offhand with air

execute if score @s trackslot matches 0 run loot replace entity @s hotbar.0 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 1 run loot replace entity @s hotbar.1 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 2 run loot replace entity @s hotbar.2 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 3 run loot replace entity @s hotbar.3 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 4 run loot replace entity @s hotbar.4 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 5 run loot replace entity @s hotbar.5 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 6 run loot replace entity @s hotbar.6 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 7 run loot replace entity @s hotbar.7 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 8 run loot replace entity @s hotbar.8 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 9 run loot replace entity @s inventory.0 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 10 run loot replace entity @s inventory.1 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 11 run loot replace entity @s inventory.2 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 12 run loot replace entity @s inventory.3 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 13 run loot replace entity @s inventory.4 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 14 run loot replace entity @s inventory.5 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 15 run loot replace entity @s inventory.6 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 16 run loot replace entity @s inventory.7 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 17 run loot replace entity @s inventory.8 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 18 run loot replace entity @s inventory.9 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 19 run loot replace entity @s inventory.10 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 20 run loot replace entity @s inventory.11 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 21 run loot replace entity @s inventory.12 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 22 run loot replace entity @s inventory.13 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 23 run loot replace entity @s inventory.14 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 24 run loot replace entity @s inventory.15 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 25 run loot replace entity @s inventory.16 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 26 run loot replace entity @s inventory.17 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 27 run loot replace entity @s inventory.18 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 28 run loot replace entity @s inventory.19 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 29 run loot replace entity @s inventory.20 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 30 run loot replace entity @s inventory.21 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 31 run loot replace entity @s inventory.22 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 32 run loot replace entity @s inventory.23 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 33 run loot replace entity @s inventory.24 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 34 run loot replace entity @s inventory.25 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches 35 run loot replace entity @s inventory.26 1 mine 0 -64 0 stick{drop_contents:true}
execute if score @s trackslot matches -106 run loot replace entity @s weapon.offhand 1 mine 0 -64 0 stick{drop_contents:true}