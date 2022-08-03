#team size check

execute unless entity @e[tag=center] run say The center point either doesn't exist or is currently unloaded!

execute unless score notempty teamSize matches 2.. run say Not Enough Players!

execute if score notempty teamSize matches 2.. if entity @e[tag=center] run function cf:phase/init1