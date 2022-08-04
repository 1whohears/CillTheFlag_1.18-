#correct the villagers for the flags

execute if score red flagState matches 1 at @e[tag=mr] unless entity @e[tag=vr,distance=..10] run summon villager ~ ~-2 ~ {NoAI:1b,Health:100f,Tags:["vr"],Attributes:[{Name:generic.max_health,Base:100}],VillagerData:{type:"minecraft:savanna"},Offers:{}}
execute if score red flagState matches 1 at @e[tag=mr] as @e[tag=vr,distance=2.5..] run tp @s ~ ~-2 ~

execute if score blue flagState matches 1 at @e[tag=mb] unless entity @e[tag=vb,distance=..10] run summon villager ~ ~-2 ~ {NoAI:1b,Health:100f,Tags:["vb"],Attributes:[{Name:generic.max_health,Base:100}],VillagerData:{type:"minecraft:snow"},Offers:{}}
execute if score blue flagState matches 1 at @e[tag=mb] as @e[tag=vb,distance=2.5..] run tp @s ~ ~-2 ~

execute if score green flagState matches 1 at @e[tag=mg] unless entity @e[tag=vg,distance=..10] run summon villager ~ ~-2 ~ {NoAI:1b,Health:100f,Tags:["vg"],Attributes:[{Name:generic.max_health,Base:100}],VillagerData:{type:"minecraft:jungle"},Offers:{}}
execute if score green flagState matches 1 at @e[tag=mg] as @e[tag=vg,distance=2.5..] run tp @s ~ ~-2 ~

execute if score yellow flagState matches 1 at @e[tag=my] unless entity @e[tag=vy,distance=..10] run summon villager ~ ~-2 ~ {NoAI:1b,Health:100f,Tags:["vy"],Attributes:[{Name:generic.max_health,Base:100}],VillagerData:{type:"minecraft:desert"},Offers:{}}
execute if score yellow flagState matches 1 at @e[tag=my] as @e[tag=vy,distance=2.5..] run tp @s ~ ~-2 ~